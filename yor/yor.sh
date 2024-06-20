#!/bin/bash

# Download Yor
echo "** Downloading Yor **"
curl -s -k https://api.github.com/repos/bridgecrewio/yor/releases/latest | jq '.assets[] | select(.name | contains("linux_386")) | select(.content_type | contains("gzip")) | .browser_download_url' -r | awk '{print "curl -L -k " $0 " -o yor.tar.gz"}' | sh

# Extract Yor
echo "** Extracting Yor **"
tar -xf yor.tar.gz -C bin

# remove yor.tar.gz
echo "** Remove yor.tar.gz **"
rm -rf yor.tar.gz

# set execute permissions on yor
echo "** Set execute permissions **"
chmod +x bin/yor

# display Yor version
echo "** Display Yor version **"
./yor --version

# run Yor
echo "** Run Yor **"
./yor tag --directory . --parsers Terraform --tag-groups git