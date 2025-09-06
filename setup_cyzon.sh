#!/bin/sh
# =====================================================
# Cyzon – Ultimate Alpine Scripting Environment Setup
# =====================================================

echo "======================================"
echo "Starting Cyzon setup..."
echo "This will install all core tools and shells."
echo "======================================"

# Update Alpine package index
apk update

# Install shells, utilities, networking, programming, monitoring, and automation tools
apk add bash zsh fish coreutils ncurses tmux screen curl wget nmap tcpdump netcat python3 lua nodejs gcc g++ make git vim nano awk sed jq grep htop glances cron at task-spooler xz

# Create a scripts folder in your home directory
mkdir -p ~/scripts

# Add basic aliases to bash, zsh, and fish
echo "alias ll='ls -lah'" >> ~/.bashrc
echo "alias ll='ls -lah'" >> ~/.zshrc
echo "echo 'alias ll="ls -lah"' >> ~/.config/fish/config.fish" >> ~/.config/fish/config.fish

# Notify completion
echo "======================================"
echo "Cyzon setup complete!"
echo "Log out and log back in, then start using your shells and tools."
echo "Your scripts folder is ready at ~/scripts"
echo "======================================"
