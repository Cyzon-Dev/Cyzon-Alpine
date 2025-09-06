#!/bin/sh
# =====================================================
# Cyzon – Ultimate Alpine Scripting Environment Setup
# =====================================================

echo "======================================"
echo "Starting Cyzon setup..."
echo "This will install core tools, shells, and GitHub integration."
echo "======================================"

# Update Alpine package index
apk update

# Install shells, utilities, networking, programming, monitoring, and automation tools
apk add bash zsh fish coreutils ncurses tmux screen \
    curl wget nmap tcpdump netcat-openbsd \
    python3 lua nodejs gcc g++ make git \
    vim nano gawk sed jq grep htop glances \
    openrc dcron xz

# Create a scripts folder in your home directory
mkdir -p ~/scripts
cd ~/scripts

# Add basic aliases to bash, zsh, and fish
echo "alias ll='ls -lah'" >> ~/.bashrc
echo "alias ll='ls -lah'" >> ~/.zshrc
echo "echo 'alias ll=\"ls -lah\"' >> ~/.config/fish/config.fish" >> ~/.config/fish/config.fish

# ================= GitHub Integration =================
echo "======================================"
echo "Setting up GitHub integration for ~/scripts"
echo "Your scripts can be pushed to your personal GitHub repo."
echo "======================================"

# Ask for GitHub information
read -p "Enter your GitHub username: " gh_user
read -p "Enter your repository name (it must exist on GitHub): " repo_name

# Initialize git repo if not already present
if [ ! -d ".git" ]; then
    git init
fi

# Add remote origin (ignore error if it exists)
git remote add origin https://github.com/$gh_user/$repo_name.git 2>/dev/null

# Add all scripts, commit, and push
git add .
git commit -m "Initial commit of Cyzon scripts" 2>/dev/null
echo "You may be prompted to authenticate with GitHub (username/password or token)."
git push -u origin master

echo "======================================"
echo "Cyzon setup complete!"
echo "Log out and log back in, then start using your shells and tools."
echo "Your scripts folder is ready at ~/scripts, now synced with your GitHub repo."
echo "======================================"
