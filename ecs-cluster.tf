resource "aws_ecs_cluster" "ecs-cluster" {
  name = "my-cluster"
}

#resource "aws_ecs_capacity_provider" "ecs-capacity-providers" {
#  name = aws_ecs_cluster.ecs-cluster.name
#
#  auto_scaling_group_provider {
#    auto_scaling_group_arn = aws_autoscaling_group.autoscaling_group.arn
#    managed_scaling {
#      status                    = "ENABLED"
#      target_capacity           = 100
#      maximum_scaling_step_size = 1
#    }
#  }
#}