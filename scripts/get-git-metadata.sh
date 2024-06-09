# get commit user name
GIT_LAST_COMMIT_USER_NAME=$(git show -s --format=%an 2>&1)
# get commit user email
GIT_LAST_COMMIT_USER_EMAIL=$(git show -s --format=%ae 2>&1)
# get commit datetime
GIT_LAST_COMMIT_DATE=$(git show -s --format=%ci 2>&1)
# get repo url
GIT_REPO_URL=$(git ls-remote --get-url 2>&1)
#get git commit sha
GIT_COMMIT_SHA=$(git rev-parse HEAD)

# set TAGS variable
export TAGS=$(echo "{\"git_last_commit_by_name\":\"$GIT_LAST_COMMIT_USER_NAME\",\"git_last_commit_by_email\":\"$GIT_LAST_COMMIT_USER_EMAIL\",\"git_last_commit_at\":\"$GIT_LAST_COMMIT_DATE\",\"git_repo_url\":\"$GIT_REPO_URL\",\"git_commit\":\"$GIT_COMMIT_SHA\"}" | sed 's/ /_/g')
