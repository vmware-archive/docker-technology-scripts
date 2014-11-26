#!/bin/bash -ex

OPENJDK8=openjdk-1.8

cd /tmp
rm -rf $OPENJDK8
mkdir $OPENJDK8
cd $OPENJDK8

# Grab latest URL
echo "Fetch latest openjdk-8 from https://download.run.pivotal.io/openjdk-jdk/trusty/x86_64/index.yml..."
LATEST_URL=`curl https://download.run.pivotal.io/openjdk-jdk/trusty/x86_64/index.yml | grep "^1\.8\.0_[0-9]\{2,\}" | tail -n 1 | cut -d " " -f 2`
FILE_NAME=`basename $LATEST_URL`

echo "Found $FILE_NAME at $LATEST_URL"

# Download the latest version
echo "Downloading $FILE_NAME..."
wget -nv $LATEST_URL
echo "Finished downloading $FILE_NAME"

# Unzip openjdk to install
if [[ -f $FILE_NAME  ]] ; then
  echo "Successfully downloaded!"
else
  echo "Failed to download!"
  exit 1
fi

echo "Extracting archive..."
tar xzf $FILE_NAME
rm $FILE_NAME

if [[ -d bin && `bin/java -Xmx64M -version 2>&1` =~ "OpenJDK 64-Bit Server" && $? == 0 ]]; then
  cp -a /tmp/$OPENJDK8 /usr/local/bin
else
  echo "JVM is not properly packaged"
  exit 1
fi

ln -s /usr/local/bin/$OPENJDK8/bin/java /usr/local/bin/

rm -rf /tmp/$OPENJDK8
