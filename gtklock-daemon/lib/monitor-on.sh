wlr-randr | grep -E "^[A-Za-z0-9-]+" | awk '{print $1}' | while read output; do
    wlr-randr --output "$output" --dpms on
done