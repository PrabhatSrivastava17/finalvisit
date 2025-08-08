variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string  

  }
variable "resource_group_location" {
  description = "Location of the Resource Group"
  type        = string
}   
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}
variable "subnet_id" {
  description = "ID of the Subnet to which the NIC will be attached"
  type        = string
}
variable "public_ip_id" {
  description = "ID of the Public IP Address to associate with the NIC"
  type        = string
}

