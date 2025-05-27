# ----- directory
ln -s ~/.config/archlinux-dotfiles/hypr ~/.config/hypr
ln -s ~/.config/archlinux-dotfiles/kitty ~/.config/kitty
ln -s ~/.config/archlinux-dotfiles/starship ~/.config/starship

# ----- files
ln -s ~/.config/archlinux-dotfiles/nvim ~/.config/nvim
ln -s ~/.config/archlinux-dotfiles/waybar ~/.config/waybar
ln -s ~/.config/archlinux-dotfiles/cava/config ~/.config/cava/config
ln -s ~/.config/archlinux-dotfiles/btop/btop.conf ~/.config/btop/btop.conf
ln -s ~/.config/archlinux-dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -s ~/.config/archlinux-dotfiles/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc

# ----- themes
ln -s ~/.config/archlinux-dotfiles/index.theme ~/.icons/default

# ----- run execution permision for script
chmod +x ~/.config/archlinux-dotfiles/hypr/scripts/autostart/*.sh