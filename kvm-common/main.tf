terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.8.3" 
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_pool" "disks" {
  name = "disks"
  type = "dir"
target {
  path = var.pool_path
}
}

resource "libvirt_volume" "base_volume" {
  name   = "base.qcow2"
  pool   = libvirt_pool.disks.name
  source = var.image
  format = "qcow2"
}

