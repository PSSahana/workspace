resource "aws_security_group" "allow_tls" {
  name        = var.sg-name
  description = "Allow ssh inbound traffic"
  vpc_id      = var.vpcid

  ingress {
    description = "ssh from VPC"
    from_port   = var.rule1_fromport
    to_port     = var.rule1_toport
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }


}