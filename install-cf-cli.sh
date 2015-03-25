#!/bin/sh

wget https://cli.run.pivotal.io/stable?release=debian64 -O cf-cli_amd64.deb
dpkg -i cf-cli_amd64.deb
ln -s /usr/bin/cf /usr/bin/gcf

