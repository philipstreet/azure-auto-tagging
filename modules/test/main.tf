resource "azurerm_storage_account" "this" {
  account_replication_type      = "LRS"
  account_tier                  = "Standard"
  location                      = var.location
  name                          = var.name
  resource_group_name           = var.resource_group_name
  public_network_access_enabled = true
  enable_https_traffic_only     = true
  tags = merge(var.tags, {
    git_commit           = "7713b19e27e79926f52c524930a9d144f7dbabd1"
    git_file             = "modules/test/main.tf"
    git_last_modified_at = "2024-05-30 13:56:11"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "0e27e4aa-1e92-4d55-8e42-f8084865c0e7"
  })
}