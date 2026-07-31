<div align="center">

# 🔄 sysup

**Ubuntu Update Manager**

![OS](https://img.shields.io/badge/OS-Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-Bash%20%7C%20Zsh-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)

*A simple, interactive Bash script to manage APT, Snap, and Flatpak updates from a single unified menu.*

</div>

---

> [!WARNING]  
> **Zero-prompt updates:** Once you select an option in the menu, updates are fully automatic. The script uses `-y` flags (e.g., `apt upgrade -y`, `flatpak update -y`) to bypass all manual installation confirmations.

> [!NOTE]  
> **Privileges required:** The script will prompt for your `sudo` password when executing APT or Snap updates. 

## 🚀 One-Line Installation

Run the following command. The setup is fully automated:

```bash
curl -sL https://raw.githubusercontent.com/cthonney/sysup/main/install.sh | bash```
⚙️ Under the Hood
-----------------

What the install.sh script does behind the scenes:

*   📁 Creates the ~/.local/bin directory if it doesn't exist.
    
*   ⬇️ Downloads the update-manager script directly from this repository.
    
*   🔑 Applies the correct execution permissions (chmod +x).
    
*   🐚 Detects your default login shell (Bash or Zsh).
    
*   🔗 Injects the sysup alias seamlessly into your ~/.bashrc or ~/.zshrc.
    

👨‍💻 Credits
-------------

Cédric ([@cthonney](https://github.com/cthonney)).
