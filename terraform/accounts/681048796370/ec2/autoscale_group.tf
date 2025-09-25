# AWS Documentation: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-your-first-auto-scaling-group.html

resource "aws_launch_template" "lt" {
  name_prefix   = "lt-for-autoscaling-${var.app_name}"
  image_id      = "ami-0e2f17250b39af5b5"
  instance_type = "t4g.micro"
}

resource "aws_autoscaling_group" "asg" {
  name = "asg-for-autoscaling-${var.app_name}"
  vpc_zone_identifier = var.private_subnet_ids
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }
}