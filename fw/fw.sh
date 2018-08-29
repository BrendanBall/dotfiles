__workon () {
  PROJECT="$(fw -q ls | fzf --cycle --query=$1 --color=light --preview-window=top:50% --preview='fw -q inspect {}' --no-mouse)"
  SCRIPT="$(fw -q gen-workon $2 $PROJECT)";
  if [ $? -eq 0 ]; then
    eval "$SCRIPT";
  else
    printf "$SCRIPT\n";
  fi
};

rwn () {
  SCRIPT="$(fw -q gen-reworkon $@)";
  if [ $? -eq 0 ]; then
    eval "$SCRIPT";
  else
    printf "$SCRIPT\n";
  fi
};

wn () {
  __workon "$1"
};

nwn () {
  __workon "$1" "-x"
};
