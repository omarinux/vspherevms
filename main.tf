locals {
  filename = "444444"
  content = "gaaggagagaga"
}

resource "local_file" "ciao" {
  content  = "${local.content}"
  filename = "/tmp/${local.filename}"
}

