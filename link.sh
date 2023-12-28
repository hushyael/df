rm ~/.zshrc
ln -s ~/df/.zshrc ~/.zshrc

rm -r ~/.config/nvim
ln -s ~/df/nvim ~/.config/nvim

ln -s ~/df/.vscode/nvim ~/.vscode/nvim

rm ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/df/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/df/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
