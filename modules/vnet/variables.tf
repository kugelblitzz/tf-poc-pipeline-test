variable "vnet_name" {}
variable "location" {}
variable "rg_name" {}
variable "address_space" {}
variable "subnets" {
  type = map(string)
  description = "Subnet names"
}

