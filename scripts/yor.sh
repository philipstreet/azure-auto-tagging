# download Yor
curl -s -k https://api.github.com/repos/bridgecrewio/yor/releases/latest | jq '.assets[] | select(.name | contains("linux_386")) | select(.content_type | contains("gzip")) | .browser_download_url' -r | awk '{print "curl -L -k " $0 " -o yor.tar.gz"}' | sh
tar -xf yor.tar.gz
chmod +x yor
./yor --version

# run Yor
yor tag --directory tagging --dry-run --parsers Terraform
yor tag --directory tagging --parsers Terraform

# show folder contents
# ls -al