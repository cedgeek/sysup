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

## 🚀 One-Line Installation

Run the following command. The setup is fully automated:

```bash
curl -sL [https://raw.githubusercontent.com/cthonney/sysup/main/install.sh](https://raw.githubusercontent.com/cthonney/sysup/main/install.sh) | bash
