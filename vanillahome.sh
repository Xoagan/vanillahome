#!/bin/bash


# Creating an array of folders available in XDG

FOLDERS=(
  "DESKTOP"
  "DOCUMENTS"
  "DOWNLOAD"
  "PICTURES"
  "VIDEOS"
  "TEMPLATES"
)

# Simple loop

for FOLDER in "${FOLDERS[@]}"; do
  PROPER_FOLDER_NAME=$(echo $FOLDER | awk '{print tolower($0)}')
  echo "Creating symlink for ${PROPER_FOLDER_NAME^}"
  ln -s $(xdg-user-dir ${FOLDER}) "$HOME"/${PROPER_FOLDER_NAME^}
done