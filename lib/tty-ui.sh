#!/bin/bash
# by 4urora3night

# -Functions- #
option_submenus () 
{
  local option_list=("$@")
  choice=$(\
  gum choose \
  --limit 1 --header "" --cursor "   • "  --cursor.foreground 4 \
  "${option_list[@]}" '[Back]' '[Exit]')
  case $choice in
    "[Exit]") clear && exit ;;
    "[Back]") break;;
  esac 
}
option_home ()
{
  local option_list=("$@")
  choice=$(\
  gum choose \
  --limit 1 --header "" --cursor "   • "  --cursor.foreground 4 \
  "${option_list[@]}" '(-Update-)' '[Exit]')
  case $choice in
    "(-Update-)") update_sys;;
    "[Exit]") clear && exit;;
  esac 
}
