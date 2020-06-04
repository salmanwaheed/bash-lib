#!/bin/bash

ins_pkg_info() {
  NAME=$1
  SIZE=$(sudo apt-cache --no-all-versions show "$NAME" | grep -i '^Installed-Size: ' | awk '{print $2}')
  sleep 1
  echo "installing $NAME... Size: $(( $SIZE / 1024 ))MB. It may take time to download and install."
  sudo apt install -y "$NAME" >/dev/null 2>&1 && echo "$NAME has installed!"
}
