variable "state_file_path" {
  type = map(string)
  default = {
    s3  = "repos/iaclabs/${var.account_id}/s3/tf-state"
    vpc = "repos/iaclabs/${var.account_id}/vpc/tf-state"
  }
}
