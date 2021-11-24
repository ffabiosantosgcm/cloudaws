# Criando uma vm na AWS usando terraform
provider "aws" {

  region = "sa-east-1"
}

resource "aws_instance" "puc" {
  ami           = "ami-0e66f5495b4efdd0f"
  instance_type = "t2.micro"
  #Coloque o nome do seu par de chaves aqui
  key_name      = "terraform-aws-fabio"
  tags = {
    Name = "puc-vms"
  }
}