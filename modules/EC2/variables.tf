variable "region" {
  default = ""
}
/*variable "key-name" {
  default = ""
}
*/


variable "instance-type" {
  default = ""
}
variable "subnet_id" {
  
}

variable "associate-public-ip-address" {
  default = ""
}

variable "number-of-ec2-instances-required" {
  type = number
  default = 1
}

variable "instance-name-tag" {
  type = string
  default = ""
}
variable "vpc-sec-group-ids" {
  default = ""
}



