variable "dnsimple_email" {}
variable "dnsimple_token" {}
variable "aws_region" {}

provider "dnsimple" {
    token = "${var.dnsimple_token}"
    email = "${var.dnsimple_email}"
}

provider "aws" {
    region = "${var.aws_region}"
}
