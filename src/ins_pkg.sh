#!/bin/bash

ins_pkg() {
  echo "installing $1..."
  sudo apt install -y "$1" >/dev/null 2>&1 && echo "$1 has installed!"
}

ins_pkg_with_tiny_info() {
  NAME=$1
  if ! is_command_existed "$NAME"; then
    SIZE=$(sudo apt-cache --no-all-versions show "$NAME" | grep -i '^Installed-Size: ' | awk '{print $2}')
    echo "installing $NAME... Size: $(( $SIZE / 1024 ))MB. It may take time to download and install."
    sudo apt install -y "$NAME" >/dev/null 2>&1 && echo "$NAME has installed!"
  else
    echo "$NAME is already installed!"
  fi
}
