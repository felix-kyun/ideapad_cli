#!/usr/bin/env bash

set -e

# check if running as root
uid=$(id -u)
if (( uid != 0 )); then
    echo "This script must be run as root."
    exec sudo "$0" "$@"
fi

echo "Installing ideapad-cli..."
install -Dm755 ideapad-cli /usr/local/bin/ideapad-cli
echo "ok"
