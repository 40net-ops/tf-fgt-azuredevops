variable "studentnr" {
  description = "Your student number"
}

terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
    hostname = "roz.sv.jvh.be"
    token = "d5d7c3zs1whmr7spqzr13wn35H3j8y"
    insecure = "true"
}

resource "fortios_firewall_object_address" "object" {
    name = "student${var.studentnr}_terraform_server"
    type = "ipmask"
    subnet = "172.16.137.4/32"
    comment = "Internal server"
}

resource "fortios_firewall_policy" "policy" {
  name                = "student${var.studentnr}_tf"
  comments            = "student${var.studentnr}"
  status              = "enable"
  action              = "accept"
  schedule            = "always"
  logtraffic          = "all"

  srcintf { name = "port2" }
  dstintf { name = "port1" }
  srcaddr { name = "student${var.studentnr}_terraform_server" }
  dstaddr { name = "all" }
  service { name = "ALL" }

  nat                 = "enable"
}

