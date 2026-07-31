# Ubuntu Update Manager

A simple, interactive bash script to manage APT, Snap, and Flatpak updates from a single menu. 

⚠️ **Zero-prompt updates:** Once you select an option in the menu, the updates are **fully automatic**. The script uses the `-y` flags (`apt upgrade -y`, `flatpak update -y`, etc.), so it will never pause to ask for installation confirmations.

## One-Line Installation

Run the following command. The setup is also **fully automated**.

```bash
curl -sL https://raw.githubusercontent.com/cthonney/sysup/main/install.sh | bash
```
What the installer does behind the scenes:
Creates the ~/.local/bin directory if it doesn't exist.

Downloads the update-manager script from this repository.

Sets the correct execution permissions (chmod +x).

Detects your default shell (Bash or Zsh).

Injects the sysup alias directly into your ~/.bashrc or ~/.zshrc.


Maintained by Cédric (@cthonney).
