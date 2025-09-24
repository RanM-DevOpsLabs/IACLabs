resource "aws_s3_bucket" "tf_state" {
  for_each = var.state_file_path
  bucket   = each.value

  tags = {
    Name        = "terraform-remote-state"
    TF_STATE = each.key
  }
}
