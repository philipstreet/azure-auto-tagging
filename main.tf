module "naming" {
  source  = "Azure/naming/azurerm"
  version = ">= 0.4.1"
  suffix  = ["tagpoc"]
}

resource "azurerm_resource_group" "this" {
  location = var.location
  name     = module.naming.resource_group.name_unique
  tags = merge(local.tags, {
    git_commit           = "59ddb922d34bae26b21e998b9be929b665dbb7bc"
    git_file             = "main.tf"
    git_last_modified_at = "2024-06-15 13:10:19"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "a3ef27e0-440a-4563-83d2-bee2cf440611"
  })
  # timeouts {
  #   create = "15m"
  # }
}
