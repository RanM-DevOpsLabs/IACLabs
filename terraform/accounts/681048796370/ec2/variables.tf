variable "region" {
  description = "The region to deploy the VPC"
  type = string
}

variable "access_key" {
  description = "The access key to deploy the VPC"
  type = string
}

variable "secret_key" {
  description = "The secret key to deploy the VPC"
  type = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
}

variable "app_name" {
  description = "The name of the application"
  type = string
}

variable "private_subnet_ids" {
  description = "The IDs of the private subnets"
  type = list(string)
}