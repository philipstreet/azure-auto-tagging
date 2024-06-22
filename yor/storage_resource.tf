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
    git_commit           = "2e55fa8a14a01dc76f5dfad9de9331eb0ef6e86b"
    git_file             = "yor/storage_resource.tf"
    git_last_modified_at = "2024-06-20 16:54:17"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "98743d3b-9e1e-468a-ab7e-145d04b5799f"
  })
}
