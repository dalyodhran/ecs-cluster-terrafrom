resource "aws_ecs_task_definition" "task_definition" {
  container_definitions = data.template_file.task_definition.rendered
  family                = "worker"
  execution_role_arn = "arn:aws:iam::953610586681:role/ecsTaskExecutionRole"
}

data "template_file" "task_definition" {
  template = templatefile("${path.module}/task_definition.json.tpl", {
      "CREDS_ARN" = data.aws_secretsmanager_secret.gitlab-docker-registry.arn
  })
}