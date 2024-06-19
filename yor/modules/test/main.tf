resource "azurerm_storage_account" "this" {
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  location                         = var.location
  name                             = var.name
  resource_group_name              = var.resource_group_name
  public_network_access_enabled    = var.public_network_access_enabled
  enable_https_traffic_only        = var.enable_https_traffic_only
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled
  tags                             = var.tags
}