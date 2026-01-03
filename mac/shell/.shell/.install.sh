#!/bin/bash

sh -c "brew install nvim"
sh -c "brew install tmux"
sh -c "brew install fzf"
sh -c "brew install kitty"
sh -c "brew install ripgrep"
sh -c "brew install python"
sh -c "brew install npm"
sh -c "brew install raycast"
sh -c "$(brew --prefix)/opt/fzf/install"
sh -c "git clone https://github.com/junegunn/fzf-git.sh.git ~/fzf-git.sh"

set -e
# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "${YELLOW}Installing oh-my-zsh...${NC}"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    echo "${GREEN}✓ oh-my-zsh installed${NC}\n"
else
    echo "${GREEN}✓ oh-my-zsh already installed${NC}\n"
fi

# Install zsh-autosuggestions
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo "${YELLOW}Installing zsh-autosuggestions...${NC}"
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    echo "${GREEN}✓ zsh-autosuggestions installed${NC}\n"
else
    echo "${GREEN}✓ zsh-autosuggestions already installed${NC}\n"
fi

# Install zsh-syntax-highlighting
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    echo "${YELLOW}Installing zsh-syntax-highlighting...${NC}"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
    echo "${GREEN}✓ zsh-syntax-highlighting installed${NC}\n"
else
    echo "${GREEN}✓ zsh-syntax-highlighting already installed${NC}\n"
fi

# Install command-time plugin
if [ ! -d "$ZSH_CUSTOM/plugins/command-time" ]; then
    echo "${YELLOW}Installing command-time...${NC}"
    git clone https://github.com/popstas/zsh-command-time.git "$ZSH_CUSTOM/plugins/command-time"
    echo "${GREEN}✓ command-time installed${NC}\n"
else
    echo "${GREEN}✓ command-time already installed${NC}\n"
fi
