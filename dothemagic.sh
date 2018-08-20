#!/bin/sh

echo "USAGE: source dothemagic.sh #proxy_user# #proxy_pass# #proxy_domain# #proxy_port#"

cd ~

echo "# Instalando o homebrew..."

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap phinze/homebrew-cask
brew install brew-cask ccat git node wget

brew install watchman

brew cask install alfred
brew cask install firefox
brew cask install hyper
brew cask install slack
brew cask install google-chrome
brew cask install imageoptim
brew cask install mysqlworkbench
brew cask install spectacle
brew cask install spotify
brew cask install virtualbox

# fancy diff
npm install -g diff-so-fancy
brew install gnu-sed
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global pager.diff "diff-so-fancy | less --tabs=1,5 -RFX"
git config --global pager.show "diff-so-fancy | less --tabs=1,5 -RFX"
