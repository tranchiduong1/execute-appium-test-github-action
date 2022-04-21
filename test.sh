#!/bin/bash
set -euo pipefail

printf "\n=====================================================================================\n"
printf "KOBITON EXECUTE TEST ACTION"
printf "\n=====================================================================================\n\n"

# change the name of app to run based on your system (app_darwin for macOS, app_linux for Linux, app_windows for Windows)
TARGET_OS="linux"
echo "Runner OS: ${RUNNER_OS}"
if [ $RUNNER_OS == "macOS" ]; then
    TARGET_OS="darwin"
elif [ $RUNNER_OS == "Windows" ]; then
    TARGET_OS="windows"
fi
APP_TO_RUN="app_${TARGET_OS}"
chmod +x $GITHUB_ACTION_PATH/app-to-run/${APP_TO_RUN}

$GITHUB_ACTION_PATH/app-to-run/${APP_TO_RUN}
