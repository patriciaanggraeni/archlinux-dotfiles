WALLPAPER_DIR="$HOME/.config/archlinux-dotfiles/assets/wallpapers"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

swww img "$WALLPAPER" \
  --transition-type grow \
  --transition-fps 60 \
  --transition-duration 1
