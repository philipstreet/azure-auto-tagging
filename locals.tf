locals {

  # Tags to be applied to all resources
  tags = {
    "Chargeback"  = "CTS"
    "Company"     = "CTS"
    "LOB"         = "CTS"
    "Environment" = title(var.environment)
  }
}
