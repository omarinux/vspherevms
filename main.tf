locals {
  foldername = "test01"
  foldername2 = "test04"
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername} && /usr/bin/mkdir /tmp/${local.foldername} && touch /tmp/${local.foldername}.txt && echo 'ciao' >> /tmp/${local.foldername}.txt"
  }
}

resource "null_resource" "makefolder2" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername2} && /usr/bin/mkdir /tmp/${local.foldername2} && touch /tmp/${local.foldername2}.txt && echo 'ciao' >> /tmp/${local.foldername2}.txt"
  }
}
