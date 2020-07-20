## Install Zsh and change your shell for your user:
```sudo apt install zsh
sudo chsh $USER -s /usr/bin/zsh
exec zsh
```
## Install Oh-My-Zsh
```sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install plugins
```git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/unixorn/warhol.plugin.zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/warhol
git clone https://github.com/trapd00r/zsh-syntax-highlighting-filetypes.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting-filetypes
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting-filetypes
ln -s zsh-syntax-highlighting-filetypes.zsh zsh-syntax-highlighting-filetypes.plugin.zsh
cd
```

## Get the .zshrc config
```curl -O https://raw.githubusercontent.com/clegault/dotfiles/master/.zshrc
exec zsh
```

## Install colorls
```sudo apt install build-essential ruby ruby-dev
sudo gem install colorls
```
