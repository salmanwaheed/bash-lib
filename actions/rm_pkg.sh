#!/bin/bash

rm_pkg() {
  echo "uninstalling $1..."
  sudo apt remove --purge -y "$1" >/dev/null 2>&1 && echo "$1 has uninstalled!"
}
