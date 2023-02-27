resource "aws_instance" "ebs_l" {

  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.sunet
  key_name = var.key_name
  tags = {
    Name ="ebs_linux"
    env = "dev"
    creator ="malar"

  }


}