module "remote_storage_account" {
  source                        = "Azure/avm-res-storage-storageaccount/azurerm"
  version                       = ">= 0.1.1"
  name                          = "${module.naming.storage_account.name_unique}003"
  resource_group_name           = azurerm_resource_group.this.name
  location                      = azurerm_resource_group.this.location
  enable_https_traffic_only     = true
  public_network_access_enabled = true
  shared_access_key_enabled     = true
  #cross_tenant_replication_enabled = false
  account_replication_type = "LRS"
  network_rules            = null
  tags                     = local.tags
}
