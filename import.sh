#!/bin/bash

set -e

# ======= BL = Bash Library

# author & github username too
BL_AUTHOR=salmanwaheed

# installations directory & github repo
BL_REPO=bash-lib

# where scripts are existed
BL_SRC=src

# full path starts from /home or /Users
BL_DIR="${HOME}/.${BL_REPO}"

# if installtions folder does not existed then use current directory
[ ! -d "${BL_DIR}" ] && BL_DIR="${PWD}"

# load filename
if [ ! -z "${1}" ]; then
  FILENAME="${BL_DIR}/$BL_SRC/${1}.sh"

  # load if existed
  if [[ -f "${FILENAME}" ]]; then
    # source the file if exist
    source "${FILENAME}"

    # run command after source
    "$@"
    #case $1 in
    #    has_pkg) "$@"; exit;;
    #    rm_pkg) "$@"; exit;;
    #esac
  else
    echo "ERROR: ${1} command does not exist"
  fi
else
  echo """ERROR: atleast 1 action is required! i.e bash-lib has_pkg make

      'bash-lib' is main command,
      'has_pkg' is action
      'make' is package name

      And you result will be. '/usr/bin/make' if you had 'make' installed
  """
fi
