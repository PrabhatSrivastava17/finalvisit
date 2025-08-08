module "resource_group" {
  source                  = "../child_module/resource_group"
  resource_group_name     = "rg-prabhat"
  resource_group_location = "East US"
}
module "virtual_network" {
  depends_on              = [module.resource_group]
  source                  = "../child_module/virtual_network"
  virtual_network_name    = "vnet-prabhat"
  address_space           = ["10.0.0.0/16"]
  resource_group_location = "East US"
  resource_group_name     = "rg-prabhat"
}
module "frontendsubnet" {
  depends_on           = [module.virtual_network]
  source               = "../child_module/subnet"
  subnet_name          = "frontend-subnet-prabhat"
  resource_group_name  = "rg-prabhat"
  virtual_network_name = "vnet-prabhat"
  address_prefixes     = ["10.0.1.0/24"]
}
module "backendsubnet" {
  depends_on           = [module.virtual_network]
  source               = "../child_module/subnet"
  subnet_name          = "backend-subnet-prabhat"
  resource_group_name  = "rg-prabhat"
  virtual_network_name = "vnet-prabhat"
  address_prefixes     = ["10.0.2.0/24"]
}
module "public_ip" {
  source                  = "../child_module/public_ip"
  public_ip_name          = "public-ip-prabhat"
  resource_group_name     = "rg-prabhat"
  resource_group_location = "East us"
  allocation_method       = "Static"

}

# module "frontend_virtual_machine" {
#   depends_on              = [module.frontendsubnet]
#   source                  = "../child_module/virtual_machine"
#   admin_username          = "azureuser"
#   admin_password          = "Admin@123456"
#   vm_name                 = "frontend-vm-prabhat"
#   resource_group_location = "East US"
#   resource_group_name     = "rg-prabhat"
#   vm_size                 = "Standard_B1s"
#   os_disk_name            = "osdisk-frontend-prabhat"
#   os_publisher            = "Canonical"
#   os_offer                = "UbuntuServer"
#   os_sku                  = "18.04-LTS"
#   nic_name                = "nic-frontend-prabhat"
#   subnet_id               ="/subscriptions/1ecb1540-18db-4ab8-9eac-659a71d4a5f7/resourceGroups/rg-prabhat/providers/Microsoft.Network/virtualNetworks/vnet-prabhat/subnets/frontend-subnet-prabhat"
#   os_version              = "latest"
#   public_ip_id            = module.public_ip.public_ip.id
    
#   }