locals {
  foldername = "test01"
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername} && /usr/bin/mkdir /tmp/${local.foldername} && touch /tmp/${local.foldername}.txt && echo 'ciao' >> /tmp/${local.foldername}.txt"
  }
}
