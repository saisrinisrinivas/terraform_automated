# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicdp" {
  description = "EC2 Instance Public IP"
  value = aws_instance.ec2demo.public_ip
}

# EC2 Instance Public DNS
output "instance_publickns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.ec2demo.public_dns
}