variable "pool_path" {
  default = "/mnt/kvm/disks_newdisks"
  type = string
  description = "Virtual disks path"
}

variable "image" {
  default = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-1601.qcow2"
  type = string
  description = "Source qcow2 base image URL"
}

