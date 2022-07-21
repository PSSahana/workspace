/*provider "aws" {
#  region = var.region
 }
*/
data "aws_ami" "server_ami"{
    most_recent = true
    owners = ["099720109477"]

    filter{
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }
}
resource "aws_key_pair" "ssh-key" {
    key_name = "test"
    public_key = file("~/.ssh/testing.pub")
  
}
resource "aws_instance" "ec2" {
  ami = data.aws_ami.server_ami.id
  instance_type = var.instance-type
  count = var.number-of-ec2-instances-required
  associate_public_ip_address = var.associate-public-ip-address
  key_name = aws_key_pair.ssh-key.id
  subnet_id = var.subnet_id
  vpc_security_group_ids = ["${var.vpc-sec-group-ids}"]

  tags = {
    Name= "${var.instance-name-tag}-${count.index+1}"
  }
}

