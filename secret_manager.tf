resource "aws_secretsmanager_secret" "gitlab-docker-registry" {
    name = "gitlab-docker-registry-secret-1"
}

resource "aws_secretsmanager_secret_version" "gitlab-docker-registry-version" {
    secret_id     = aws_secretsmanager_secret.gitlab-docker-registry.id
    secret_string = jsonencode({
        username = "ecs-token"
        password = "Fy5mgo-w878XU9yNXPy5"
    })
}

data "aws_secretsmanager_secret" "gitlab-docker-registry" {
    arn = aws_secretsmanager_secret.gitlab-docker-registry.arn
}

data "aws_secretsmanager_secret_version" "gitlab-docker-registry-credentials" {
    secret_id = data.aws_secretsmanager_secret.gitlab-docker-registry.arn
}