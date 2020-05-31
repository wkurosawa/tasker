# Tasker - Task Manager API

Simple application - Task CRUD API

## Requirements

- Docker

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

# Endpoints

## List all tasks

```
GET http://localhost/tasks
```

Example:
````
curl --request GET \
  --url http://localhost/tasks/
````

## Create a new Task

```
POST http://localhost/tasks
```

- Content application type should be `content-type: json`
- params: `name` as a string and a boolean for `completed`

Example:
```
curl --request POST \
  --url http://localhost/tasks \
  --header 'content-type: application/json' \
  --data '{
	"name": "Stage 1",
	"completed": false
}'
```

## Show one of the tasks

```
GET http://localhost/tasks/:id
```

Example
```
curl --request GET \
  --url http://localhost/tasks/1
```


## Update a Task

```
PUT http://localhost/tasks/:id
```

- Content application type should be `content-type: json`
- params: `name` as a string AND/OR a boolean for `completed`

Example:

```
curl --request PUT \
  --url http://localhost/tasks/1 \
  --header 'content-type: application/json' \
  --data '{
	"name": "Stage 1",
	"completed": true
}'
```

## Delete a Task

```
DELETE http://localhost/tasks/:id
```

- Content application type should be `content-type: json`

Example:

```
curl --request DELETE \
  --url http://localhost/tasks/1
```



