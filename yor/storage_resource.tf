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
    git_commit           = "b9fc4865e7418ac39664a850e09c995973231f16"
    git_file             = "yor/storage_resource.tf"
    git_last_modified_at = "2024-06-19 16:46:50"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "152b4a60-a915-4221-88f5-2118f24d5104"
  })
}
