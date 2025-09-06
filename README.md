# Cyzon – Ultimate Alpine Scripting Environment

Cyzon is a minimal, powerful Alpine Linux setup designed for scripting, automation, and programming. Perfect for Termux users who want a lightweight but fully equipped environment.

## Features
- Lightweight base: Alpine Linux (~3.3 MB rootfs)
- Multiple shells: bash, zsh, fish
- Core utilities: coreutils, ncurses, tmux, screen, xz
- Networking & debugging: curl, wget, nmap, tcpdump, netcat
- Programming & scripting: python3, lua, nodejs, gcc, g++, make, git
- Text & parsing tools: vim, nano, awk, sed, jq, grep
- Monitoring & system info: htop, glances
- Automation: cron, at, task-spooler
- Fully customizable prompts, aliases, and scripts

## Requirements
- Termux installed on Android
- proot-distro installed (`pkg install proot-distro`)
- Alpine rootfs installed via `proot-distro install alpine`

## Installation
Update package index in Alpine:
```
apk update
```
Run the setup script:
```
sh setup_cyzon.sh
```
This installs all the core tools, shells, networking utilities, programming languages, and monitoring tools.

## Usage
Start Alpine:
```
proot-distro login alpine
```
Launch your preferred shell:
```
bash or zsh or fish
```
Run your scripts or automation tools using Python, Lua, Node.js, or shell scripting.

Monitor your system:
```
htop or glances
```

## Customization
Edit `~/.bashrc`, `~/.zshrc`, or `~/.config/fish/config.fish` to add aliases and custom prompts.  
Add your personal scripts to `~/scripts/` and include them in your PATH.

## Optional GUI
Install a lightweight desktop (XFCE/LXDE) and connect via VNC if you want a graphical interface.

## Recreating Cyzon
If you ever reset your Alpine environment, just run the `setup_cyzon.sh` script again — all tools and customization will be reinstalled automatically.
