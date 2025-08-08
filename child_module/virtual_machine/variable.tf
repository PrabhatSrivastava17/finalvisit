variable "admin_username"{
    description = "Admin username for the Virtual Machine"
    type        = string
}
variable "admin_password"{
    description = "Admin password for the Virtual Machine"
    type        = string
    sensitive   = true
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
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
variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}
variable "os_disk_name" {
  description = "Name of the OS Disk"
  type        = string
}
variable "os_publisher" {
  description = "Publisher of the OS Image"
  type        = string
}
variable "os_offer" {
  description = "Offer of the OS Image"
  type        = string
}
variable "os_sku" {
  description = "SKU of the OS Image"
  type        = string
}
variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}
variable "subnet_id" {
  description = "ID of the Subnet to which the NIC will be attached"
  type        = string
}
variable "os_version" {
  description = "Version of the OS Image"
  type        = string
  
}
variable "public_ip_id" {
  description = "ID of the Public IP Address to associate with the NIC"
  type        = string
}