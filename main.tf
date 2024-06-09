module "naming" {
  source  = "Azure/naming/azurerm"
  version = ">= 0.4.1"
  suffix  = ["tagpoc"]
}

resource "azurerm_resource_group" "this" {
  location = var.location
  name     = module.naming.resource_group.name_unique
  tags     = local.tags
}
