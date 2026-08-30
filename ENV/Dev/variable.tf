# vpc 
variable "vpc_cidr_block" {
  type = string
}

variable "vpc_name" {
  type = string
}

# subnet

variable "subnet_cidr_block" {
  type = string
}

variable "subnet_name" {
  type = string
}


# ec2
variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}

# secuity group
variable "security_group_name" {
  type = string
}


# s3 
variable "bucket_name" {
  type = string
}