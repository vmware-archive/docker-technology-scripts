#!/bin/bash -ex

apt-get update

apt-get install -y libxslt-dev libxml2-dev

gem install bosh_cli --no-ri --no-rdoc

# Plugin required for 'bosh aws create' and bootstrap commands
gem install bosh_cli_plugin_aws --no-ri --no-rdoc

# Plugin required for deploying MicroBOSH
gem install bosh_cli_plugin_micro --no-ri --no-rdoc