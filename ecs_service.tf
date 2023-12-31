resource "aws_ecs_service" "worker" {
  name = "worker"
  cluster = aws_ecs_cluster.ecs-cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  desired_count = 1
  launch_type = "EC2"
}