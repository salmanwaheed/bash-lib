#!/bin/bash

set -e

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
# normal as bash color
NC='\033[0m'

# import any file endswith .sh with absolute path
bl_import() {
  source "${BL_DIR}/${BL_ACTIONS}/${1}.sh"
}

# return message with red color as error message
bl_error() {
  echo -e "${RED}ERROR: ${1}${NC}"
}

# return message with yellow color as warning message
bl_warning() {
  echo -e "${YELLOW}WARNING: ${1}${NC}"
}

# return message with green color as information
bl_info() {
  echo -e "${GREEN}INFO: ${1}${NC}"
}

# run apt update as background process
bl_apt_update() {
  bl_info "Updating new packages..."
  sudo apt update >/dev/null 2>&1
  bl_info "Packages have been updated!"
}

# load filename
if [ ! -z "${BL_COMMAND}" ]; then
  # load if existed
  if [[ -f "${BL_DIR}/$BL_ACTIONS/${BL_COMMAND}.sh" ]]; then
    # source the file if exist
    bl_import "${BL_COMMAND}"

    if [ ! -z "${2}" ]; then
      # run command after source
      "$@"
    else
      bl_error "${BL_COMMAND} required value!"
    fi

    #case $1 in
    #    has_pkg) "$@"; exit;;
    #    rm_pkg) "$@"; exit;;
    #esac
  else
    bl_error "${BL_COMMAND} does not exist!"
  fi
else
  bl_error """atleast 1 action is required! i.e ${BL_REPO} has_pkg make

      '${BL_REPO}' is main command,
      'has_pkg' is action
      'make' is package name

      And your result will be. '/usr/bin/make' if you had 'make' installed & you are on dev env.
  """
fi
