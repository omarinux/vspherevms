locals {
  foldername = "test02222"
  foldername33 = "333333"
}

resource "null_resource" "makefolder" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername} && /usr/bin/mkdir /tmp/${local.foldername} && touch /tmp/${local.foldername}.txt && echo 'ciao' >> /tmp/${local.foldername}.txt"
  }
}

resource "null_resource" "makefolder33" {

  provisioner "local-exec" {
    command = "rm -rf /tmp/${local.foldername33} && /usr/bin/mkdir /tmp/${local.foldername33} && touch /tmp/${local.foldername33}.txt && echo 'ciao' >> /tmp/${local.foldername33}.txt"
  }
}
