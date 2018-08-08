#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list

apt update && apt install -y mongodb-org

sed -i -e 's/^\(\s*bindIp: 127.0.0.1\)/  bindIp: 0.0.0.0/' /etc/mongod.conf

systemctl enable mongod
