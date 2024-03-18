# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amzlinux2.id # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instance_type_map["qa"]
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  user_data = file("${path.module}/app1-install.sh")
  count = 2
  tags = {
    "Name" = "Count-Demo-${count.index}"
   }

  
}
