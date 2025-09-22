nix-shell ./main.nix --command swayidle -w \
timeout 300 './lib/gtklock-d.sh' \
timeout 600 './lib/monitor-off.sh' \
resume './lib/monitor-on.sh' \
before-sleep './lib/gtklock-d.sh'