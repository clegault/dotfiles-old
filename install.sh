#!/bin/bash
sudo apt update
sudo apt install -y zsh
export CHSH=no
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/unixorn/warhol.plugin.zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/warhol
git clone https://github.com/trapd00r/zsh-syntax-highlighting-filetypes.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting-filetypes
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting-filetypes
ln -s zsh-syntax-highlighting-filetypes.zsh zsh-syntax-highlighting-filetypes.plugin.zsh
cd
sudo apt install -y build-essential ruby ruby-dev
sudo apt install -y grc
sudo gem install colorls
curl -O https://raw.githubusercontent.com/clegault/dotfiles/master/.zshrc
sudo chsh -s /usr/bin/zsh $USER
exec zsh
