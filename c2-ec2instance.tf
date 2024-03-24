data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}



# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amzlinux2.id # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instance_type_map["qa"]
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  user_data = file("${path.module}/app1-install.sh")
  # count = 2
  for_each = toset(data.aws_availability_zones.my_azones.names)
  tags = {
    "Name" = "For-Each-Demo-${each.key}"
   }

  
}
