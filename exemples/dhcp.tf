#dhcp assigned instance
module "worker01" {
  source = "./kvm"
  depends_on = [module.common]
  hostname = "worker01"
}
