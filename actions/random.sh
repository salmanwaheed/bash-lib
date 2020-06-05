#!/bin/bash

random() {
  CHARS="${1}"
  LIMIT="${2}"
  for i in $(seq 1 "${LIMIT}"); do echo -n "${CHARS:$RANDOM%${#CHARS}:1}"; done
  echo
}
