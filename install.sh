#!/bin/bash

set -e

BL_DIR="${HOME}/.bash-lib"

if [ ! -d "${BL_DIR}" ]; then
  git clone https://github.com/salmanwaheed/bash-lib.git "${BL_DIR}"

  echo
  sudo ln -sf "$BL_DIR/bin/bash-lib" /usr/local/bin/bash-lib && echo -e "\nbash-lib bin location: $(which bash-lib)"
  cd "${BL_DIR}" && echo -e "\nYou have $(git describe --tags `git rev-list --tags --max-count=1`) installed."
else
  echo "'bash-lib' is already installed in ${BL_DIR} location. if you want to reinstall then remove the directory first and install it again."
fi
