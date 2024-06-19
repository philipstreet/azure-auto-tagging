#!/bin/bash

# get for 'directory' parameter
if [ $1 ]; then
  directory=$1
else
  directory="./"
fi

# Set ARM_OIDC_TOKEN environment variable with value of idToken environment variable
export ARM_OIDC_TOKEN=$idToken

# Get latest release number from https://github.com/env0/terratag/releases/download/
api_url="https://api.github.com/repos/env0/terratag/releases/latest"
response=$(curl --silent $api_url)
# Get the latest version
latest_version=$(echo $response | jq -r '.tag_name')
# Remove the 'v' from the version
latest_version_without_v=$(echo $latest_version | sed 's/v//g')
# Get the tar url
tar_url="https://github.com/env0/terratag/releases/download/${latest_version}/terratag_${latest_version_without_v}_linux_amd64.tar.gz"
# Get the tar file name
tar="terratag_${latest_version_without_v}_linux_amd64.tar.gz"

# Download Terratag
curl -O -L $tar_url
# creat bin directory
mkdir -pv bin
# extract $tar file to directory '/bin'
tar -xvf $tar -C bin
# remove $tar file
rm -rf $tar

# execute script get-git-metadata.sh
./scripts/get-git-metadata.sh

# apply Terratag tags
./bin/terratag -dir=$directory -tags=$TAGS