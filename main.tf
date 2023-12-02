locals {
  foldername = test01
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = mkdir /tmp/${local.foldername}
  }
}
