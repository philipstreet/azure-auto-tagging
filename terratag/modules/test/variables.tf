variable "tags" {
  type    = map(string)
  default = null
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type = string
}