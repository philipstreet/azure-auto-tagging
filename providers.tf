terraform {
  required_version = ">= 1.7.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

// Default subscription
provider "azurerm" {
  features {}
  use_oidc                   = true
  storage_use_azuread        = true
  subscription_id            = var.default_subscription_id
  skip_provider_registration = true
}