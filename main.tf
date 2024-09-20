provider "aws" {
    region = "us-east-1"
}

resource "aws_launch_template" "asg_template" {
    name_prefix   = "example-asg-launch-template-"
    image_id      = var.ami_id
    instance_type = var.instance_type

    vpc_security_group_ids = var.security_group_ids
}

resource "aws_autoscaling_group" "example_asg" {
    name             = "example-asg"
    desired_capacity = var.min_size
    min_size         = var.min_size
    max_size         = var.max_size

    launch_template {
        id      = aws_launch_template.asg_template.id
        version = "$Latest"
    }

    vpc_zone_identifier = var.subnet_ids

    tag {
        key                 = "Name"
        value               = "example-asg-instance"
        propagate_at_launch = true
    }
}

resource "aws_autoscaling_policy" "scale_up" {
    name                    = "scale-up"
    scaling_adjustment      = 1
    adjustment_type         = "ChangeInCapacity"
    autoscaling_group_name  = aws_autoscaling_group.example_asg.name
}

resource "aws_autoscaling_policy" "scale_down" {
    name                    = "scale-down"
    scaling_adjustment      = -1
    adjustment_type         = "ChangeInCapacity"
    autoscaling_group_name  = aws_autoscaling_group.example_asg.name
}

resource "aws_cloudwatch_metric_alarm" "cpu_high" {
    alarm_name          = "cpu-high"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = 2
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = 120
    statistic           = "Average"
    threshold           = 70
    alarm_actions       = [aws_autoscaling_policy.scale_up.arn]
    dimensions = {
        AutoScalingGroupName = aws_autoscaling_group.example_asg.name
    }
}

resource "aws_cloudwatch_metric_alarm" "cpu_low" {
    alarm_name          = "cpu-low"
    comparison_operator = "LessThanOrEqualToThreshold"
    evaluation_periods  = 2
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = 120
    statistic           = "Average"
    threshold           = 30
    alarm_actions       = [aws_autoscaling_policy.scale_down.arn]
    dimensions = {
        AutoScalingGroupName = aws_autoscaling_group.example_asg.name
    }
}