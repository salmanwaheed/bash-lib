#!/bin/bash

reg_pkg() {
  grep -h "^deb.*$1" /etc/apt/sources.list.d/* > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "regsitering ppa:$1"
    sudo add-apt-repository -y ppa:$1 >/dev/null 2>&1
    echo "fetch new packages..."
    sudo apt update >/dev/null 2>&1
    # return 0
  else
    echo "ppa:$1 already existed"
    # return 1
  fi
}
