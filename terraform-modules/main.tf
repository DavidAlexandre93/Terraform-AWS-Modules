provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "/home/thiago/.aws/credentials"
  profile = "default"
}

module "server" {
  source          = "./modules/Ec2"
  inst_ami        = "ami-01d025118d8e760db"
  inst_type       = "t2.micro"
  inst_key     = "Thiago"
  tags = {"Name" = "lab-terraform-tst", "Ambiente" = "Desenvolvimento"}
}

module "server2" {
  source          = "./modules/Ec2"
  inst_ami        = "ami-u40jymjdk5040h8f"
  inst_type       = "t2.2xlarge"
  inst_key     = "Thiago2"
  tags = {"Name" = "lab-terraform-prd", "Ambiente" = "Produção"}
}