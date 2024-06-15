resource "azurerm_storage_account" "this" {
  account_replication_type      = "LRS"
  account_tier                  = "Standard"
  name                          = "${module.naming.storage_account.name_unique}001"
  location                      = azurerm_resource_group.this.location
  resource_group_name           = azurerm_resource_group.this.name
  enable_https_traffic_only     = true
  public_network_access_enabled = true
  #cross_tenant_replication_enabled = false
  min_tls_version = "TLS1_2"
  tags = merge(local.tags, {
    git_commit           = "42324a18ee489652a130fd8698791b4d52b569e7"
    git_file             = "storage_resource.tf"
    git_last_modified_at = "2024-06-15 13:35:00"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "ebce2a7e-41b6-4a16-ba46-048b0c979d1d"
  })
}
