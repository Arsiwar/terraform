#using for_each
module "guests" {
  source = "./kvm"
  depends_on = [module.common]
  for_each = toset(["worker01", "worker02"])
  hostname = each.value
}
