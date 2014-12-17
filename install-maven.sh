#!/bin/sh

apt-get update

apt-get install -y maven

apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*