# Disable mouse acceleration
xset m 1/1 0

# Set 60Hz mode for laptop screen
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
MON_NAME=$(xrandr --query | grep primary | cut -d ' ' -f 1)
xrandr --addmode "$MON_NAME" "1920x1080_60.00"
xrandr --output "$MON_NAME" --mode "1920x1080_60.00"

# Start i3 DE
exec $HOME/tools/bin/i3
