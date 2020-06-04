#!/bin/bash

random() {
  CHARS=$1
  for i in $(seq 1 $2); do echo -n "${CHARS:$RANDOM%${#CHARS}:1}"; done
  echo
}
