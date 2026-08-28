show_mappings_widget() {
  zle -I
  local keymap=${1:-main}
  local output

  if ! bindkey -l | command grep -qx -- "$keymap"; then
    print -u2 -- "Unknown ZLE keymap: $keymap"
    return 1
  fi

  output=$(bindkey -M "$keymap")

  if (($+commands[fzf])); then
    print -r -- "$output" |
      fzf \
        --no-sort \
        --layout=reverse \
        --border \
        --prompt="ZLE mappings ($keymap)> " \
        --header="Press Esc or Ctrl-C to exit"
  elif (($+commands[less])); then
    print -r -- "$output" | less -R
  else
    print -r -- "$output"
  fi

  zle redisplay
}

zle -N show_mappings_widget
