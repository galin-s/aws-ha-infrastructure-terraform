variable "vpc_cidr" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-central-1"
}