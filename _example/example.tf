provider "aws" {
  region = "eu-west-1"
}

module "keypair" {
  source = "git::https://github.com/clouddrove/terraform-aws-keypair.git?ref=tags/0.12.1"

  key_path        = "~/.ssh/id_rsa.pub"
  key_name        = "devops"
  enable_key_pair = true
}
