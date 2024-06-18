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
tar -xvf $tar 
rm -rf $tar

# get folder contents
ls -al

# execute script get-git-metadata.sh
sh ./get-git-metadata.sh

# apply Terratag tags
./terratag -dir=./ -tags=$TAGS