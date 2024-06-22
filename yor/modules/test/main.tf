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
    git_commit           = "2e55fa8a14a01dc76f5dfad9de9331eb0ef6e86b"
    git_file             = "yor/modules/test/main.tf"
    git_last_modified_at = "2024-06-20 16:54:17"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "fa02c873-aef3-43cf-954e-701ab93a2fd9"
  })
}