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

variable "app_name" {
  description = "The name of the application"
  type = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
}

variable "public_subnet_cidr_blocks" {
  description = "The CIDR block for the public subnet"
  type = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "The CIDR block for the private subnet"
  type = list(string)
}

variable "public_availability_zone" {
  description = "The availability zone for the public subnet"
  type = string
}

variable "private_availability_zone" {
  description = "The availability zone for the private subnet"
  type = string
}