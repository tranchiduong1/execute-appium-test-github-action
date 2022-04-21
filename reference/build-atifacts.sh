#!/bin/bash

echo "Building application for multi OS"

# build for linux and ubuntu
GOOS=linux GOARCH=amd64 go build -o ../app_to_run/app_linux

# build for windows
GOOS=windows GOARCH=amd64 go build -o ../app_to_run/app_windows

#build for MacOs
GOOS=darwin GOARCH=amd64 go build -o ../app_to_run/app_darwin

echo "Build Atifacts for app_to_run"
echo "Done."