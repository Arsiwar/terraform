variable "instances" { default = 2 }

resource "random_string" "hostname" {
  length = 4
  special = false
  upper = false
  count = "${var.instances}"
}

module "workers" {
  source = "./kvm"
  depends_on = [module.common]
  hostname = "${random_string.hostname[count.index].result}"
  count = "${var.instances}"
}
