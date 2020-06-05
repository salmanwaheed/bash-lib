#!/bin/bash

source "${BL_DIR}/${BL_ACTIONS}/has_pkg.sh"

ins_pkg() {
  case "${1}" in
    help)
      echo "help is here bro"
      exit
      ;;
    *)
      if ! has_pkg "${1}"; then
        bl_info "Installing ${1}..."
        sudo apt install -y "${1}" >/dev/null 2>&1 && bl_info "$1 has installed!"
      else
        bl_info "${1} has already installed!"
      fi
      ;;
  esac
}
