rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json

rm ~/.config/nvim/init.vim
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim