#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

git clone -b monolith https://github.com/express42/reddit.git

cd reddit && bundle install

puma -d
