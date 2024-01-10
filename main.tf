locals {
  filename = "55555"
  content = "gaaggagagaga"
}

resource "local_file" "ciao" {
  content  = "${local.content}"
  filename = "/tmp/${local.filename}"
}

