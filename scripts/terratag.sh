# set env variables for Terraform debug logging
# export TF_LOG=DEBUG
# export TF_LOG_PATH=terraform.log

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

# # get commit user name
# export last_commit_user_name=$(git show -s --format=%an 2>&1)
# # get commit user email
# export last_commit_user_email=$(git show -s --format=%ae 2>&1)
# # get commit datetime
# export last_commit_datetime=$(git show -s --format=%ci 2>&1)
# # get repo url
# export repo_url=$(git ls-remote --get-url 2>&1)
# # get commit hash
# export commit_hash=$(git rev-parse HEAD 2>&1)
# # get branch name
# export branch_name=$(git rev-parse --abbrev-ref HEAD 2>&1)
# # create tags
# export tags=$(echo "{\"git_branch_name\":\"$branch_name\",\"git_user_name\":\"$last_commit_user_name\",\"git_user_email\":\"$last_commit_user_email\",\"git_commit_datetime\":\"$last_commit_datetime\",\"git_repo_url\":\"$repo_url\",\"git_commit_hash\":\"$commit_hash\"}" | sed 's/ /_/g')

# get commit user name
GIT_LAST_COMMIT_USER_NAME=$(git show -s --format=%an 2>&1)
# get commit user email
GIT_LAST_COMMIT_USER_EMAIL=$(git show -s --format=%ae 2>&1)
# get commit datetime
GIT_LAST_COMMIT_DATE=$(git show -s --format=%ci 2>&1)
# get repo url
GIT_REPO_URL=$(git ls-remote --get-url 2>&1)
# get commit hash
GIT_COMMIT_SHA=${GITHUB_SHA}
# get branch name
GIT_BRANCH=${GITHUB_REF#refs/heads/}
# set TAGS variable
TAGS=$(echo "{\"user_name\":\"$GIT_LAST_COMMIT_USER_NAME\",\"user_email\":\"$GIT_LAST_COMMIT_USER_EMAIL\",\"commit_datetime\":\"$GIT_LAST_COMMIT_DATE\",\"repo_url\":\"$GIT_REPO_URL\",\"commit_hash\":\"$GIT_COMMIT_SHA\"}" | sed 's/ /_/g')

# apply Terratag tags
./terratag -dir=./ -tags=$TAGS

# show folder contents
# ls -al

# show terraform log
# cat terraform.log