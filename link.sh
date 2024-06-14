rm ~/.zshrc
ln -s ~/df/.zshrc ~/.zshrc

rm ~/.config/zed/keymap.json
ln -s ~/df/.zed/keymap.json ~/.config/zed/keymap.json

rm ~/.config/zed/settings.json
ln -s ~/df/.zed/settings.json ~/.config/zed/settings.json

rm -rf ~/.config/zed/themes
ln -s ~/df/.zed/themes ~/.config/zed/themes

rm ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/df/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/df/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
