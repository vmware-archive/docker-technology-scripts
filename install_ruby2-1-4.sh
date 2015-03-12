#!/bin/bash -ex

apt-get update
apt-get install -y wget build-essential autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev

cd /tmp
rm -rf ruby-installer
mkdir ruby-installer
cd ruby-installer
echo "fetch latest ruby from ftp.ruby-lang.org"
wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.4.tar.gz
tar -xzvf ruby-2.1.4.tar.gz
echo "installing ruby 2.1.4"
cd ruby-2.1.4/ && ./configure && make && make install
echo "installed ruby interpreter, version:"
echo `ruby -v`
gem install bundler --no-ri --no-rdoc
echo "installed bundler"

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
