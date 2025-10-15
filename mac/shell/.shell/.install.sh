#!/bin/bash

set -e

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo -e "${YELLOW}Installing oh-my-zsh...${NC}"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    echo -e "${GREEN}✓ oh-my-zsh installed${NC}\n"
else
    echo -e "${GREEN}✓ oh-my-zsh already installed${NC}\n"
fi

# Install zsh-autosuggestions
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo -e "${YELLOW}Installing zsh-autosuggestions...${NC}"
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    echo -e "${GREEN}✓ zsh-autosuggestions installed${NC}\n"
else
    echo -e "${GREEN}✓ zsh-autosuggestions already installed${NC}\n"
fi

# Install zsh-syntax-highlighting
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    echo -e "${YELLOW}Installing zsh-syntax-highlighting...${NC}"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
    echo -e "${GREEN}✓ zsh-syntax-highlighting installed${NC}\n"
else
    echo -e "${GREEN}✓ zsh-syntax-highlighting already installed${NC}\n"
fi

# Install command-time plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    echo -e "${YELLOW}Installing zsh-syntax-highlighting...${NC}"
    git clone https://github.com/popstas/zsh-command-time.git "$ZSH_CUSTOM/plugins/command-time"
    echo -e "${GREEN}✓ command-time installed${NC}\n"
else
    echo -e "${GREEN}✓ command-time already installed${NC}\n"
fi
