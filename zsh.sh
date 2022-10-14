#!/bin/sh

set -x

#https://www.tecmint.com/install-zsh-in-ubuntu/

sudo apt-get install zsh;
chsh -s $(which zsh);

#https://safjan.com/top-popular-zsh-plugins-on-github-2021/

sudo apt-get install fzf;
sudo apt install bat
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/xUbuntu_20.10/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list
curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/xUbuntu_20.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-autosuggestions.gpg > /dev/null
sudo apt update
sudo apt install zsh-autosuggestions
#https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0ca
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
p10k configure

exec zsh

alias idea='/snap/intellij-idea-community/current/bin/idea.sh'
alias tld='cd /home/jcsim/TalendStudio-7.2.1/studio && ./Talend-Studio-linux-gtk-x86.sh'
#export JAVA_HOME=$HOME/TalendStudio-7.2.1/jre1.8.202-zulu
export JAVA_HOME=/lib/jvm/java-11-openjdk-amd64/
export PATH=/$JAVA_HOME/bin:$PATH

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

