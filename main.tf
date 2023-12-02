locals {
  foldername = "test01"
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = "/usr/bin/mkdir /tmp/${local.foldername} && touch ./${local.foldername}.txt && echo 'ciao' >> ./${local.foldername}.txt"
  }
}
