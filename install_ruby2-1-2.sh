#!/bin/bash -ex

cd /tmp
rm -rf ruby-installer
mkdir ruby-installer
cd ruby-installer
echo "fetch latest ruby from ftp.ruby-lang.org"
wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz
tar -xzvf ruby-2.1.2.tar.gz
echo "installing ruby 2.1.2"
cd ruby-2.1.2/ && ./configure && make && make install
echo "installed ruby interpreter, version:"
echo `ruby -v`
gem install bundler --no-ri --no-rdoc
echo "installed bundler"
rm -rf /tmp/ruby-installer