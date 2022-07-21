module "ec2-app-v1" {
  source = "../modules/EC2"
  region = "ap-southeast-1"
  instance-type                    = "t2.micro"
  number-of-ec2-instances-required = 2
  subnet_id = module.vpc-v1.subnet_id
  associate-public-ip-address = "true"
  instance-name-tag          = "from-EC2"
  vpc-sec-group-ids = "${module.sec-grp-v1.ec2_sg}"
 
}

module "vpc-v1" {
  source   = "../modules/VPC"
  vpc-cidr = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  vpc_id = module.vpc-v1.vpcid
  


}

module "s3-v1" {
  source      = "../modules/S3"
  name_bucket = "mybucket_for_testing_12345"
  env         = "DEV"
}

module "sec-grp-v1" {
  source = "../modules/SG"
  vpcid = module.vpc-v1.vpcid
  sg-name = "EC2-sg"
  rule1_fromport = 22
  rule1_toport = 22
  
}