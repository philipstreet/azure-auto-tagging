module "local_storage_account" {
  source              = "./modules/test"
  name                = "${module.naming.storage_account.name_unique}002"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  tags                = local.tags
}
