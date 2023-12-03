locals {
  foldername = "test01"
  foldername2 = "test02"
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername} && /usr/bin/mkdir /tmp/${local.foldername} && touch ./${local.foldername}.txt && echo 'ciao' >> ./${local.foldername}.txt"
  }
}

resource "null_resource" "makefolder2" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername2} && /usr/bin/mkdir /tmp/${local.foldername2} && touch ./${local.foldername2}.txt && echo 'ciao' >> ./${local.foldername2}.txt"
  }
}
