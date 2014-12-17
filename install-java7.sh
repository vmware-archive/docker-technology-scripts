#!/bin/sh

apt-get update

apt-get install -y openjdk-7-jdk

apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
