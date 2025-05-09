terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
 
  uri = "qemu:///system"
  
}


#create pool and network
module "common" {
  source = "./kvm-common"
}
