# Ubuntu Update Manager

A simple, interactive bash script to manage APT, Snap, and Flatpak updates from a single menu. 
Automatically creates a global `sysup` alias for quick access in Bash and Zsh.

## One-Line Installation

Run the following command to fetch the script, make it executable, and configure your aliases:

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
