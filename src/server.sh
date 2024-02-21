#!/usr/bin/env bash

__FILE__="$(readlink -f ${BASH_SOURCE[0]})"
__DIR__="${__FILE__%/*}"

APP=${1:-"${APP:-"${__DIR__}/app.sh"}"}
PORT=${2:-${PORT:-9999}}

socat TCP-LISTEN:${PORT},reuseaddr,fork EXEC:"${APP}"