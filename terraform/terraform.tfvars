# terraform.tfvars

name                         = "demo01"
environment                  = "poc"
aws_region                   = "ap-east-1"
app_image                    = "snpsuen/assign01:node-app01"
app_port                     = 9090
app_count                    = 2
cidr_block                   = "192.168.0.0/16"
fargate_cpu                  = "2048"
fargate_memory               = "4096"
ecs_autoscaling_min_capacity = 2
ecs_autoscaling_max_capacity = 4
