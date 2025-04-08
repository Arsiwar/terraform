module "worker01" {
  source = "./kvm"
  depends_on = [module.common]
  hostname = "worker01"
  method = "static"
  address = "192.168.190.100/24"
  gateway = "192.168.190.1"
}

#dhcp assigned instance
module "worker02" {
  source = "./kvm"
  depends_on = [module.common]
  hostname = "worker02"
  memory = 1024
  vcpu = 2
}

