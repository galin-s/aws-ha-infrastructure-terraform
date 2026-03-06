# AWS HA Infrastructure with Terraform

This repository contains a **highly-available (HA) AWS infrastructure** configuration using **Terraform**. It demonstrates a modular approach with separate modules for VPC, EC2, ALB, and Security Groups.

## Project Structure
```
├── diagrams/ # Architecture diagrams
├── environments/
│ └── dev/ # Development environment
├── modules/
│ ├── alb/ # Application Load Balancer module
│ ├── ec2/ # EC2 Auto Scaling module
│ ├── security/ # Security groups module
│ └── vpc/ # VPC, subnets, S3 & NAT & Internet Gateways
├── README.md
└── versions.tf # Terraform required versions
```

## Features

- **VPC & Networking**: Public & private subnets, Internet Gateway, NAT Gateways, S3 Gateway route tables.
- **EC2 Auto Scaling**: Launch templates with user data to start Nginx, auto scaling group with min/max/desired capacity.
- **Application Load Balancer**: HTTP listener and target group for EC2 instances.
- **Security Groups**: Separate SGs for ALB and EC2 instances.
- Modular design for easy reuse and maintainability.

## Prerequisites

- Terraform >= 1.5.x
- AWS CLI configured with appropriate credentials
- An AWS account with permissions for EC2, VPC, ELB, AutoScaling, IAM, S3
