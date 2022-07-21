
output "aws-instance" {
  value = ["${aws_instance.ec2.*.id}"]
}
output "ec2-public-ip" {
  value = "${aws_instance.ec2.*.public_ip}"
}