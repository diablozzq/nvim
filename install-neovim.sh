#!/bin/bash
# Once neovim 5 hits repo,
# sudo apt install neovim
# Just run out of the ./bin/nvim path and add that folder to path
# mkdir -p ~/.config/nvim && git clone https://github.com/diablozzq/nvim ~/.config && ~/.config/nvim/install-neovim.sh
mkdir -p ~/.local/bin
wget https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-linux64.tar.gz -O /tmp/nvim.tar.gz
tar -xzf /tmp/nvim.tar.gz -C ~/.local/bin
rm -f /tmp/nvim.tar.gz
export PATH="$PATH:$HOME/.local/bin/nvim-linux64/bin"
echo 'export PATH="$PATH:$HOME/.local/bin/nvim-linux64/bin"' >> ~/.bashrc

cp ~/.config/nvim/.zshrc ~/.zshrc

#scp /mnt/c/Users/morla/OneDrive/Notes/init.vim mininet@192.168.111.129:~/.config/nvim/
sudo apt install -y git gcc unzip rsync npm nodejs ripgrep zsh
# Installs python support
#sudo apt install python-neovim python3-neovim
chsh -s $(which zsh)

# Update nodejs
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim -c ':PlugInstall'
nvim -c ':TSInstall all'

## WSL2 config
## Don't have to do on Ubuntu WSL - already installed

# Win32 yank to fix WSL copy paste
#curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
#unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
#chmod +x /tmp/win32yank.exe
#sudo mv /tmp/win32yank.exe /usr/local/bin/

# Installs WSLU collection on kali for wslview
# Doesn't work on Kali
# https://github.com/wslutilities/wslu
#sudo apt install gnupg2 apt-transport-https
#wget -O - https://pkg.wslutiliti.es/public.key | sudo tee -a /etc/apt/trusted.gpg.d/wslu.asc
#echo "deb https://pkg.wslutiliti.es/kali kali-rolling main" | sudo tee -a /etc/apt/sources.list
#sudo apt update
#sudo apt install wslu
