#!/bin/bash

ins_pkg() {
  echo "installing $1..."
  sudo apt install -y "$1" >/dev/null 2>&1 && echo "$1 has installed!"
}
