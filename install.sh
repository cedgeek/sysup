#!/bin/bash

# Configuration
URL_SCRIPT="https://raw.githubusercontent.com/cthonney/sysup/main/update-manager"
DEST_DIR="$HOME/.local/bin"
DEST_FILE="$DEST_DIR/update-manager"
ALIAS_NAME="sysup"

echo "[+] Creating directory $DEST_DIR..."
mkdir -p "$DEST_DIR"

echo "[+] Downloading script..."
curl -sL "$URL_SCRIPT" -o "$DEST_FILE"
chmod +x "$DEST_FILE"

echo "[+] Checking shell environment..."
USER_SHELL=$(basename "$SHELL")

if [ "$USER_SHELL" = "bash" ]; then
    RC_FILE="$HOME/.bashrc"
elif [ "$USER_SHELL" = "zsh" ]; then
    RC_FILE="$HOME/.zshrc"
else
    echo "[-] Unsupported shell detected ($USER_SHELL)."
    echo "    -> Please manually add this to your config: alias $ALIAS_NAME='$DEST_FILE'"
    echo "[+] Setup finished. Run '$DEST_FILE' directly to use it."
    exit 0
fi

echo "[+] Injecting '$ALIAS_NAME' alias into $RC_FILE..."
if [ -f "$RC_FILE" ]; then
    if ! grep -q "alias $ALIAS_NAME='$DEST_FILE'" "$RC_FILE"; then
        echo "alias $ALIAS_NAME='$DEST_FILE'" >> "$RC_FILE"
        echo "    -> Added to $RC_FILE"
    else
        echo "    -> Already exists in $RC_FILE"
    fi
else
    echo "[-] $RC_FILE not found. Create it and add: alias $ALIAS_NAME='$DEST_FILE'"
fi

echo "[+] Setup finished. Reload shell (exec \$SHELL) and use '$ALIAS_NAME'."
