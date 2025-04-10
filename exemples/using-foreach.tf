#using for_each
module "workers" {
  source = "./kvm"
  depends_on = [module.common]
  for_each = toset(["worker01", "worker02"])
  hostname = each.value
}
