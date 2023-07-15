resource "aws_secretsmanager_secret" "gitlab-docker-registry" {
    name = "gitlab-docker-registry-secret-1"
}

resource "aws_secretsmanager_secret_version" "gitlab-docker-registry-version" {
    secret_id     = aws_secretsmanager_secret.gitlab-docker-registry.id
    secret_string = jsonencode({
        username = "ecs-token"
        password = var.gitlab_docker_registry_token
    })
}

data "aws_secretsmanager_secret" "gitlab-docker-registry" {
    arn = aws_secretsmanager_secret.gitlab-docker-registry.arn
}

data "aws_secretsmanager_secret_version" "gitlab-docker-registry-credentials" {
    secret_id = data.aws_secretsmanager_secret.gitlab-docker-registry.arn
}