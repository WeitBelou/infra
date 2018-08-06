#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Install ruby
apt update && apt install -y ruby-full ruby-bundler build-essential

# Install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list

apt update && apt install -y mongodb-org

systemctl start mongod
systemctl enable mongod

# Deploy app
git clone -b monolith https://github.com/express42/reddit.git

cd reddit && bundle install

puma -d
