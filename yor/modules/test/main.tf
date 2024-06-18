resource "azurerm_storage_account" "this" {
  account_replication_type      = "LRS"
  account_tier                  = "Standard"
  location                      = var.location
  name                          = var.name
  resource_group_name           = var.resource_group_name
  public_network_access_enabled = true
  enable_https_traffic_only     = true
  tags = var.tags
}