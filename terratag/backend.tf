terraform {
  backend "azurerm" {
    use_oidc         = true
    use_azuread_auth = true
  }
}