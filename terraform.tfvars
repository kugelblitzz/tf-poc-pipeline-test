subscription_id = "085fd7b7-4fca-4159-a264-8010c183af23"
rg_name         = "poc"
location        = "East US"
vnet_name       = "poc-vnet"
vm_name         = "poc-vm"
vm_size         = "Standard_B2s"
admin_user      = "azureuser"
ssh_key         = "/home/jonathan/basic-vm-tf/id_rsa.pub"

subnets = {
  "subnet-1" = "10.0.1.0/24"
  "subnet-2" = "10.0.2.0/24"
  "subnet-3" = "10.0.3.0/24"
}

