resource "aws_subnet" "my_first_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.subnet_name
  }
}