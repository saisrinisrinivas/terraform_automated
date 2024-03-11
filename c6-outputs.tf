# Terraform Output Values

# EC2 Instance Public IP
# output "instance_publicip" {
#   description = "EC2 Instance Public IP"
#   value = aws_instance.ec2demo.public_ip
# }

# # EC2 Instance Public DNS
# output "instance_publicdns" {
#   description = "EC2 Instance Public DNS"
#   value = aws_instance.ec2demo.public_dns
# }

output "for_output_list" {
  description = "For loop with lists"
  value = [for ins in aws_instance.ec2demo: ins.public_ip]
  
}

output "for_output_map" {
  description = "For loop with map"
  value = {for ins in aws_instance.ec2demo: ins.id => ins.public_ip}
  
}

output "latest_splat_operator"{
  description = "Generalized latest splat operator"
  value = aws_instance.ec2demo[*].public_dns
}