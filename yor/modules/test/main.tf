resource "azurerm_storage_account" "this" {
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  location                         = var.location
  name                             = var.name
  resource_group_name              = var.resource_group_name
  public_network_access_enabled    = var.public_network_access_enabled
  enable_https_traffic_only        = var.enable_https_traffic_only
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled
  tags = merge(var.tags, {
    git_commit           = "7a71bc28b62e6e62c3b785ddc6f7a87f60b893a5"
    git_file             = "yor/modules/test/main.tf"
    git_last_modified_at = "2024-06-19 16:46:46"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "da68b815-da94-4265-b102-0c2b2cd5939a"
  })
}