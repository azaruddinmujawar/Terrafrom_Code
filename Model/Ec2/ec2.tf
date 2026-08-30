resource "aws_instance" "my_first_ec2" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.instance_type
  
  subnet_id = var.subnet_id
  vpc_security_group_ids  = [var.security_group_id]

  tags = {
    Name = var.instance_name
  }
}