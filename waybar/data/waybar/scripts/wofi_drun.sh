#!/usr/bin/env bash
set -euo pipefail

script_dir="$(dirname "$(readlink -f "$0")")"
data_dir="$(cd "$script_dir/../.." && pwd)"
wofi_bin="$(command -v wofi)"

clean_env=(
  HOME="$HOME"
  USER="${USER:-}"
  LOGNAME="${LOGNAME:-${USER:-}}"
  LANG="${LANG:-en_US.UTF-8}"
  LC_ALL="${LC_ALL:-${LANG:-en_US.UTF-8}}"
  XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-}"
  WAYLAND_DISPLAY="${WAYLAND_DISPLAY:-}"
  DISPLAY="${DISPLAY:-}"
  DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-}"
  XDG_CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP:-}"
  XDG_SESSION_TYPE="${XDG_SESSION_TYPE:-}"
  XDG_DATA_DIRS="${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"
  PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
)

exec env -i "${clean_env[@]}" "$wofi_bin" \
  --conf "$data_dir/wofi/config" \
  --style "$data_dir/wofi/style.css" \
  --show drun "$@"

