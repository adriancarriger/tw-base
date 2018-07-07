#!/bin/sh

set -ex

cd "$(dirname "$0")"

if [[ $1 == "-f" ]]; then
  echo "Forcing a clean install…"
  rm -rf ../tw-data
  rm -rf ../tw-server
fi

if [[ ! -d ../tw-data ]]; then
  git clone --branch develop git@github.com:adriancarriger/tw-data.git ../tw-data
fi

if [[ ! -d ../tw-server ]]; then
  git clone --branch develop git@github.com:adriancarriger/tw-server.git ../tw-server
fi
