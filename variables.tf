# Required
variable "resource_group_name" {
  type        = string
  description = "rg name"
}
variable "location" {
  type        = string
  description = "location"
}

# nic
variable "nic_name" {
  type        = string
  description = "nic name"
}
variable "subnet_id" {
  type        = string
  description = "subnet id"
}

# vm
variable "hostname" {
  type        = string
  description = "Computer name, host name"
}
variable "size" {
  description = "vm size"
}
variable "admin_username" {
  type        = string
  description = "admin user name"
}
variable "admin_password" {
  type        = string
  description = "admin user password"
}
variable "os_disk_sku" {
  type        = string
  description = "os disk sku"
}
variable "publisher" {
  type        = string
  description = "image publisher"
}
variable "offer" {
  type        = string
  description = "image offer"
}
variable "sku" {
  type        = string
  description = "image distro"
}
variable "os_tag" {
  type        = string
  description = "image version"
}


# Optional
## nic
variable "ip_configuration_name" {
  type        = string
  description = "IP Configuration Name"
  default     = "Internal"
}
variable "private_ip_address_allocation" {
  type        = string
  description = "Private IP Allocation Method"
  default     = "Dynamic"
}
variable "public_ip_address_id" {
  type        = string
  description = "Public ip address id"
  default = ""
}
## vm
variable "os_disk_caching" {
  type        = string
  description = "OS disk Caching"
  default     = "ReadWrite"
}