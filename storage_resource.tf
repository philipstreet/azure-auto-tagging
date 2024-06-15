resource "azurerm_storage_account" "this" {
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  name                             = "${module.naming.storage_account.name_unique}001"
  location                         = azurerm_resource_group.this.location
  resource_group_name              = azurerm_resource_group.this.name
  enable_https_traffic_only        = true
  public_network_access_enabled    = true
  # cross_tenant_replication_enabled = false
  min_tls_version                  = "TLS1_2"
  tags                             = local.tags
}
