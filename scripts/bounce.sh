#!/usr/bin/env bash

set -e

change_to_project_root() {
  local project_root=$(git rev-parse --show-toplevel);
  pushd "$project_root";
}

change_to_original_directory() {
  popd;
}

function build {
    make install -s
}

function restart {
    gpstop -ra
}

message_rebuilding() {
  echo "Rebuilding gpdb."
}

message_restarting() {
  echo "Restarting gpdb."
}

function main {
    change_to_project_root
    message_rebuilding
    build
    message_restarting
    restart
    change_to_original_directory
}

main
