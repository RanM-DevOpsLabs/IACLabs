resource "aws_s3_bucket" "this" {
  for_each = var.state_file_path
  bucket   = each.value
  force_destroy = true

  tags = {
    Name        = "terraform-remote-state"
    TF_STATE = each.key
  }
}
