#!/bin/bash

bl_import has_pkg

rm_pkg() {
  case "${1}" in
    help)
      echo "help is here bro"
      exit
      ;;
    *)
      if ! has_pkg "${1}"; then
        bl_info "Uninstalling ${1}..."
        sudo apt remove --purge -y "${1}" >/dev/null 2>&1 && bl_info "${1} has uninstalled!"
      else
        bl_info "${1} has already uninstalled!"
      fi
      ;;
  esac
}
