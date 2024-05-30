locals {

  # Tags to be applied to all resources
  tags = {
    "Environment" = title(var.environment)
  }
}
