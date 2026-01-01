# AWS Terraform Infrastructure Project

This Terraform project creates a complete AWS infrastructure with VPC, public subnets, and EC2 instances.

## Infrastructure Components

- **VPC** with DNS support enabled
- **Internet Gateway** for internet connectivity
- **2 Public Subnets** across different availability zones
- **Route Table** configured for internet access
- **Security Group** allowing SSH access from anywhere
- **2 EC2 Instances** (m7i-flex.large) running Ubuntu Server LTS

## Prerequisites

1. AWS CLI configured with appropriate credentials
2. Terraform installed (>= 1.0)
3. SSH key pair at `~/.ssh/aws_rsa` and `~/.ssh/aws_rsa.pub`

## Configuration

The project uses the following default values:
- **Region**: us-east-1
- **VPC CIDR**: 10.0.0.0/16
- **Subnet 1 CIDR**: 10.0.1.0/24 (AZ: us-east-1a)
- **Subnet 2 CIDR**: 10.0.2.0/24 (AZ: us-east-1b)
- **AMI**: ami-0ecb62995f68bb549 (Ubuntu Server LTS)
- **Instance Type**: m7i-flex.large

## Usage

### Initialize Terraform
```bash
terraform init
```

### Validate Configuration
```bash
terraform validate
```

### Plan Infrastructure
```bash
terraform plan
```

### Apply Configuration
```bash
terraform apply
```

### Destroy Infrastructure
```bash
terraform destroy
```

## Outputs

After successful deployment, you'll receive:
- VPC and subnet IDs
- EC2 instance IDs and IP addresses
- SSH connection commands for both instances

## SSH Access

Connect to your instances using:
```bash
# Instance 1
ssh -i ~/.ssh/aws_rsa ubuntu@<instance-1-public-ip>

# Instance 2
ssh -i ~/.ssh/aws_rsa ubuntu@<instance-2-public-ip>
```

## File Structure

```
.
├── main.tf          # Main infrastructure resources
├── variables.tf     # Variable definitions
├── outputs.tf       # Output definitions
└── README.md        # This file
```

## Security Note

The security group allows SSH access from anywhere (0.0.0.0/0). For production environments, restrict this to specific IP ranges.
