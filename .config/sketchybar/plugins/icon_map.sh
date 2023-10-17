case "$1" in
"Alacritty" | "Hyper" | "iTerm2" | "kitty" | "Terminal" | "终端" | "WezTerm")
  icon_result=":terminal:"
  ;;
"Chromium" | "Google Chrome" | "Google Chrome Canary")
  icon_result=":google_chrome:"
  ;;
"Xcode")
  icon_result=":xcode:"
  ;;
"Insomnia")
  icon_result=":insomnia:"
  ;;
"Slack")
  icon_result=":slack:"
  ;;
"Default")
  icon_result=":default:"
  ;;
"Neovide" | "MacVim" | "Vim" | "VimR" | "Neovim" | "Nvim")
  icon_result=":vim:"
  ;;
"Firefox")
  icon_result=":firefox:"
  ;;
"Microsoft Teams")
  icon_result=":microsoft_teams:"
  ;;
esac
echo $icon_result
