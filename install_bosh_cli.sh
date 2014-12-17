#!/bin/bash -ex

apt-get update

# The DB clients are required for the aws plugin
apt-get install -y libxslt-dev libxml2-dev libmysqlclient-dev libpq-dev libsqlite3-dev

gem install bosh_cli --no-ri --no-rdoc

# Plugin required for 'bosh aws create' and bootstrap commands
# Still unclear if we need this
gem install bosh_cli_plugin_aws --no-ri --no-rdoc

# Plugin required for deploying MicroBOSH
# Still unclear if we need this
gem install bosh_cli_plugin_micro --no-ri --no-rdoc