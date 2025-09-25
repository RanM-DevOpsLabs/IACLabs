variable "buckets_names" {
  description = "The path to the state file"
  type = map(string)
}

variable "account_id" {
  description = "The account ID to deploy the S3"
  type = string
}

variable "region" {
  description = "The region to deploy the S3"
  type = string
}

variable "access_key" {
  description = "The access key to deploy the S3"
  type = string
}

variable "secret_key" {
  description = "The secret key to deploy the S3"
  type = string
}
