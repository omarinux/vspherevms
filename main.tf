locals {
  foldername = "test01"
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername} && /usr/bin/mkdir /tmp/${local.foldername} && touch ./${local.foldername}.txt && echo 'ciao' >> ./${local.foldername}.txt"
  }
}
