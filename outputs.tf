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

# Public Subnet ID
output "public_subnet_id" {
  description = "ID of public subnet"
  value       = aws_subnet.public.id
}

# Private Subnet ID
output "private_subnet_id" {
  description = "ID of private subnet"
  value       = aws_subnet.private.id
}

# NAT Gateway ID
output "nat_gateway_id" {
  description = "ID of NAT Gateway"
  value       = aws_nat_gateway.main.id
}

# Elastic IP
output "nat_eip" {
  description = "Elastic IP of NAT Gateway"
  value       = aws_eip.nat.public_ip
}

# Security Group ID
output "security_group_id" {
  description = "ID of the SSH security group"
  value       = aws_security_group.ssh_access.id
}

# Public EC2 Instance Details
output "public_instance_id" {
  description = "ID of public EC2 instance"
  value       = aws_instance.public.id
}

output "public_instance_public_ip" {
  description = "Public IP of public EC2 instance"
  value       = aws_instance.public.public_ip
}

output "public_instance_private_ip" {
  description = "Private IP of public EC2 instance"
  value       = aws_instance.public.private_ip
}

# Private EC2 Instance Details
output "private_instance_id" {
  description = "ID of private EC2 instance"
  value       = aws_instance.private.id
}

output "private_instance_private_ip" {
  description = "Private IP of private EC2 instance"
  value       = aws_instance.private.private_ip
}

# S3 Bucket Details
output "s3_bucket_name" {
  description = "Name of S3 bucket for frontend"
  value       = aws_s3_bucket.frontend.id
}

output "s3_bucket_arn" {
  description = "ARN of S3 bucket"
  value       = aws_s3_bucket.frontend.arn
}

output "s3_bucket_website_endpoint" {
  description = "Website endpoint for S3 bucket"
  value       = aws_s3_bucket_website_configuration.frontend.website_endpoint
}

output "s3_bucket_website_url" {
  description = "Website URL for S3 bucket"
  value       = "http://${aws_s3_bucket_website_configuration.frontend.website_endpoint}"
}

# SSH Connection Commands
output "ssh_command_public_instance" {
  description = "SSH command for public instance"
  value       = "ssh -i ~/.ssh/aws_rsa.pem ubuntu@${aws_instance.public.public_ip}"
}

output "ssh_command_private_instance" {
  description = "SSH command for private instance (via public instance with agent forwarding)"
  value       = "ssh -A -J ubuntu@${aws_instance.public.public_ip} ubuntu@${aws_instance.private.private_ip}"
}
