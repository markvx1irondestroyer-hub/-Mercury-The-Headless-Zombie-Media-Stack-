[![🧟 Mercury Stack Validation](https://github.com/markvx1irondestroyer-hub/-Mercury-The-Headless-Zombie-Media-Stack-/actions/workflows/validate-stack.yml/badge.svg)](https://github.com/markvx1irondestroyer-hub/-Mercury-The-Headless-Zombie-Media-Stack-/actions/workflows/validate-stack.yml)

# 🧟 Mercury: The Headless Zombie Media Stack
User: markvx1irondestroyer-hub

## Description
A fully automated installer and Docker stack for a headless media server. Optimized for the NVIDIA GTX 750.

## Installation
1. Download the files to your home directory.
2. Run the installer:
   `bash install.sh`
3. After reboot, enter your mercury folder:
   `m cd`
4. Fire up the stack:
   `m up`

## The 'm' Command
| Command | Result |
|---|---|
| `m up` | Starts all media apps |
| `m gpu` | Monitors GPU Temp/Usage |
| `m ps` | Shows what is running |
| `m reset` | Nuclear wipe and restart |
## 💾 Optional: External Storage "Internal Trick"
If you are using an external USB drive (like the **Expansion** drive) as your primary media Vault, follow these steps to "trick" the system into treating it as a permanent internal drive.

### Benefits:
* **Persistence**: The drive mounts automatically at boot.
* **Safety**: If the drive is unplugged, the system will still boot normally thanks to `nofail` logic.
* **Permissions**: Automatically sets ownership to PUID 1000 for Docker compatibility.

### How to Run:
```bash
chmod +x mount-vault.sh
./mount-vault.sh

​⚠️ Note on Safety & Responsibility


​While this stack is designed to be a "set and forget" solution, please remember:




​Check the Code: Always inspect scripts and command strings before running or piping them into your terminal.


​User Responsibility: By using these scripts, you acknowledge that you are doing so at your own risk.


​Disclaimer: I am not responsible for any data loss, hardware issues, or system instability that may occur during the use of this repository.



