if ! pgrep gtklock &> /dev/null; then
    gtklock -d --config ./config/gtklock/config.ini
fi