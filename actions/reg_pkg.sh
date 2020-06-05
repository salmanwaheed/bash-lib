#!/bin/bash

reg_pkg() {
  case "${1}" in
    help)
      echo "help is here bro"
      exit
      ;;
    *)
      if ! grep -q "^deb .*${1}" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        bl_info "regsitering ppa:${1}..."
        sudo add-apt-repository -y "ppa:${1}" >/dev/null 2>&1
        bl_apt_update
      else
        bl_info "ppa:${1} already existed"
      fi
      ;;
  esac
}
