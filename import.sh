#!/bin/bash

set -e

# load filename
if [ ! -z "${BL_COMMAND}" ]; then
  BL_FILENAME="${BL_DIR}/$BL_ACTIONS/${BL_COMMAND}.sh"

  # load if existed
  if [[ -f "${BL_FILENAME}" ]]; then
    # source the file if exist
    source "${BL_FILENAME}"

    # run command after source
    "$@"

    #case $1 in
    #    has_pkg) "$@"; exit;;
    #    rm_pkg) "$@"; exit;;
    #esac
  else
    echo "ERROR: ${BL_COMMAND} command does not exist"
  fi
else
  echo """ERROR: atleast 1 action is required! i.e ${BL_REPO} has_pkg make

      '${BL_REPO}' is main command,
      'has_pkg' is action
      'make' is package name

      And you result will be. '/usr/bin/make' if you had 'make' installed
  """
fi
