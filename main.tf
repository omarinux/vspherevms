locals {
  filename = "444444"
  content = "99999"
}

resource "local_file" "ciao" {
  content  = "${local.content}"
  filename = "/tmp/${local.filename}"
}

