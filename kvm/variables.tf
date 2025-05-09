variable "hostname" {
  default = "worker"
  type = string
  description = "Hostname"
}

variable "domain" {
  default = "local"
  type = string
  description = "Search domain"
}

variable "memory" {
  default = 1024
  type = number
  description = "Memory in megabytes"
}

variable "vcpu" {
  default = 1
  type = number
  description = "Number of virtual cores"
}

variable "size" {
  default = 20401094656
  type = number
  description = "Virtual disk size in bytes (defaults to 19 GB)"
}

variable "method" {
  default = "dhcp"
  type = string
  description = "Address assign method, either static or dhcp"
}

variable "address" {
  default = ""
  type = string
  description = "IP address in CIDR notation"
}

variable "gateway" {
  default = ""
  type = string
  description = "Default gateway"
}

variable "dns_1" {
  default = ""
  type = string
  description = "Primary nameserver"
}


variable "deploy_account" {
  default = "deploy"
  type = string
  description = "Deployment account username"
}

variable "deploy_account_pwd" {
  default = ""
  type = string
  description = "Deployment account password"
}

variable "bridge_iface" {
  default = "virbr0"
  type = string
  description = "Host bridge interface name"
}
