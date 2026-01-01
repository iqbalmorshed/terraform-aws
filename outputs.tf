# VPC ID
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

# Internet Gateway ID
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

# Public Subnet IDs
output "public_subnet_1_id" {
  description = "ID of public subnet 1"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "ID of public subnet 2"
  value       = aws_subnet.public_2.id
}

# Security Group ID
output "security_group_id" {
  description = "ID of the SSH security group"
  value       = aws_security_group.ssh_access.id
}

# EC2 Instance 1 Details
output "instance_1_id" {
  description = "ID of EC2 instance 1"
  value       = aws_instance.web_1.id
}

output "instance_1_public_ip" {
  description = "Public IP of EC2 instance 1"
  value       = aws_instance.web_1.public_ip
}

output "instance_1_private_ip" {
  description = "Private IP of EC2 instance 1"
  value       = aws_instance.web_1.private_ip
}

# EC2 Instance 2 Details
output "instance_2_id" {
  description = "ID of EC2 instance 2"
  value       = aws_instance.web_2.id
}

output "instance_2_public_ip" {
  description = "Public IP of EC2 instance 2"
  value       = aws_instance.web_2.public_ip
}

output "instance_2_private_ip" {
  description = "Private IP of EC2 instance 2"
  value       = aws_instance.web_2.private_ip
}

# SSH Connection Commands
output "ssh_command_instance_1" {
  description = "SSH command for instance 1"
  value       = "ssh -i ~/.ssh/aws_rsa ubuntu@${aws_instance.web_1.public_ip}"
}

output "ssh_command_instance_2" {
  description = "SSH command for instance 2"
  value       = "ssh -i ~/.ssh/aws_rsa ubuntu@${aws_instance.web_2.public_ip}"
}
