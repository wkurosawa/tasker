# Tasker - Task Manager API

Simple application - Task CRUD API
Built with:
- Java Spring Boot
- MySQL
- Docker

## Requirements

- Docker installed
The build process is going to install Gradle and build the dependencies using the Docker container resources.

## Build Application

```shell
docker-compose build
```

This command should build the application using Gradle.

## Run Application

```shell
docker-compose up
```

After running this command the application should be available on localhost port 80.

---

# Documentation

- [API Endpoints](docs/endpoints.md)
- [Database](docs/database.md)
