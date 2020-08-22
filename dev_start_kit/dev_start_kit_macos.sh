/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install fish
brew install python
curl -L https://get.oh-my.fish | fish
chsh -s `which fish`
# adding fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add oh-my-fish/theme-bobthefish
brew cask install visual-studio-code
brew install autojump
# add  autojumo source to config.fish
echo "# for autojump to work" >> ~/.config/fish/config.fish
echo "source /usr/local/share/autojump/autojump.fish" >> ~/.config/fish/config.fish
echo "# changing LS colors" >> ~/.config/fish/config.fish
echo "set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD" >> ~/.config/fish/config.fish
brew cask install iterm2