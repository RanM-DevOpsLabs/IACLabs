resource "aws_security_group" "sg" {
  # Imported from AWS Console
  description = "default VPC security group"
  name_prefix = "default-sg"
  vpc_id      = "vpc-06caa261e78aa5f45"
  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }

  ingress {
    cidr_blocks = [
      "0.0.0.0/0",
    ]
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }

  ingress {
    cidr_blocks      = []
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = true
    to_port          = 0
  }

  tags = {}

}
