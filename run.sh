#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export XDG_CONFIG_HOME="$DIR/config"
export PATH="$DIR/bin:$PATH"
exec "$DIR/nvim.appimage" "$@"
