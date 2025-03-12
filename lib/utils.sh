#!/bin/bash
# by 4urora3night

tput_clean_text_area() {
  tput cup 12 0
  tput ed
}

# --  Output text format  -- #
title() {
  gum style \
    --foreground 4 --border-foreground 2 --border double \
    --align center --width ${text_box_size} --margin "0 1" --padding "2 0" \
    "$(echo "______         _     _____          _        _ _ 
| ___ \       | |   |_   _|        | |      | | |
| |_/ /__  ___| |_    | | _ __  ___| |_ __ _| | |
|  __/ _ \/ __| __|   | || '_ \/ __| __/ _\` | | |
| | | (_) \__ \ |_   _| || | | \__ \ || (_| | | |
\_|  \___/|___/\__|  \___/_| |_|___/\__\__,_|_|_|")"
}
text_box() {
  local text="$(echo -e "$1")"
  gum style \
    --foreground 7 --border-foreground 4 --border normal \
    --align left --width ${text_box_size} --margin "0 1" --padding "1 1" \
    "${text}"
}
text_box_confirm() {
  local text="$(echo -e "$1")"
  gum style \
    --foreground 7 --border-foreground 1 --border normal \
    --align left --width ${text_box_size} --margin "0 1" --padding "1 1" \
    "${text}"
}
text_confirm() {
  gum confirm \
    "$1" --prompt.foreground 7 --selected.background 2
}
#-------------------------------------------
check_app_installed() {
  if ! command -v "$1" &>/dev/null; then
    return 0
  else
    return 1
  fi
}
update_sys() {
  "${AUR_HELPER}" -Syyu --noconfirm
  flathub update -y
}