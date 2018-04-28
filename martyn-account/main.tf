variable "name" {}
variable "email" {}
variable "role_name" {}

resource "aws_organizations_account" "acc" {
  name      = "${var.name}"
  email     = "${var.email}"
  role_name = "${var.role_name}"
  count     = "${var.role_name != "" ? 1 : 0}"
}

resource "aws_organizations_account" "custom" {
  name  = "${var.name}"
  email = "${var.email}"
  count = "${var.role_name == "" ? 1 : 0}"
}
