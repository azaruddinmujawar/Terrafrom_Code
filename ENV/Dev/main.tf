module "vpc_module" {
  source = "../../Model/Vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name = var.vpc_name
}

module "subnet_module" {
  source = "../../Model/Subnet"
  vpc_id = module.vpc_module.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
  subnet_name = var.subnet_name
}

module "ec2_module" {
  source = "../../Model/Ec2"
  subnet_id = module.subnet_module.subnet_id
  security_group_id = module.security_group_model.security_group_id
  instance_type = var.instance_type
  instance_name = var.instance_name
}

module "security_group_model" {
  source = "../../Model/Security_Group"
  vpc_id = module.vpc_module.vpc_id
  security_group_name = var.security_group_name 
}

module "S3_bucket_module" {
   source = "../../Model/S3"
   bucket_name = var.bucket_name
}