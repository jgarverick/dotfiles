#!/bin/bash

if command -v exec >/dev/null 2>&1; then
echo '[INFO] Setting up zsh as default shell...'
echo 'export SHELL=`which zsh`' >> ~/.bashrc
echo '[ -z "$ZSH_VERSION" ] && exec "$SHELL" -l' >> ~/.bashrc
fi

echo '[INFO] Setting up Powerlevel10k...'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo '[INFO] Setting up git aliases...'
git config --global alias.lol "log --oneline --graph --decorate --all"
echo '[INFO] Do not forget to set your user name and email in the git config!'

echo '[INFO] Copying p10k and .zshrc files...'
cp .p10k.zsh ~/.p10k.zsh
echo "[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >> .zshrc
echo "source ~/.powerlevel10k/powerlevel10k.zsh-theme" >> .zshrc
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> .zshrc

echo '[INFO] Setup of oh-my-zsh complete.'

