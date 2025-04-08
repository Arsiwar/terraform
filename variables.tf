variable "deploy_account" {
  default = "deploy"
  type = string
  description = "Deployment account username"
}

variable "host_server" {
  default = ""
  type = string
  description = "Host server IP address"
}
variable "deploy_account_pwd" {
  type        = string
  description = "Mot de passe du compte utilisateur"
}

