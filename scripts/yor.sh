# download Yor
echo "** Downloading Yor **"
curl -s -k https://api.github.com/repos/bridgecrewio/yor/releases/latest | jq '.assets[] | select(.name | contains("linux_386")) | select(.content_type | contains("gzip")) | .browser_download_url' -r | awk '{print "curl -L -k " $0 " -o yor.tar.gz"}' | sh
echo "** Extracting Yor **"
tar -xf yor.tar.gz
echo "** Set execute permissions **"
chmod +x yor
echo "** Display Yor version **"
./yor --version
echo "** Show folder contents **"
ls -al

# run Yor
./yor tag --directory . --dry-run --parsers Terraform
./yor tag --directory . --parsers Terraform