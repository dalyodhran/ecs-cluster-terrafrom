[
    {
        "essential": true,
        "memory": 128,
        "name": "worker",
        "cpu": 1,
        "image": "registry.gitlab.com/quench2/beer-service/beerservice:0.0.1",
        "repositoryCredentials": {
            "credentialsParameter": "${CREDS_ARN}"
        },
        "environment": []
    }
]