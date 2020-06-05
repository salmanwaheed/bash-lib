#!/bin/bash

has_pkg() {
  command -v "${1}" >/dev/null 2>&1
}
