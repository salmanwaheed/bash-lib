#!/bin/bash

has_pkg() {
  command -v "$@" >/dev/null 2>&1
}
