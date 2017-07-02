#!/bin/bash
set -e

#_______________________________________________________________________________
#                              Configurations
ZIP_PREFIX='unroot'

#_______________________________________________________________________________
#                              Inner functions
function generate_zip() {
  local ZIP_NAME="$1_$(date +%Y-%m-%d).zip"

  local ZIP_FILES=./*

  zip \
  --quiet \
  --recurse-path $ZIP_NAME \
  $ZIP_FILES \
  --exclude '*.asc' '*.xml'
  echo "Result: $ZIP_NAME"
}

#_______________________________________________________________________________
#                                 Main
echo "~~~ Packing up"
generate_zip $ZIP_PREFIX

echo "~~~ Finished"
