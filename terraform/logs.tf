# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "${var.name}_log_group" {
  name              = "/ecs/assign01-app"
  retention_in_days = 30

  tags = {
    Name = "${var.name}-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "${var.name}_log_stream" {
  name           = "${var.name}-log-stream"
  log_group_name = "aws_cloudwatch_log_group.${var.name}_log_group.name"
}
