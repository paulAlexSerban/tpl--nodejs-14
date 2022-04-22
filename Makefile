include .env

build-image:
	docker build --file app/nodejs.Dockerfile ./app --tag ${COMPOSE_PROJECT_NAME}

build-conatiner: build-image
	docker run --detach --publish 3000:8080 --name ${DOCKER_CONTAINER_NAME} --env .env ${COMPOSE_PROJECT_NAME}

start-conatiner:
	docker start ${DOCKER_CONTAINER_NAME}

stop-conatiner:
	docker stop ${DOCKER_CONTAINER_NAME}

remove-conatiner:
	docker container rm ${DOCKER_CONTAINER_NAME}

build-compose-container:
	docker-compose --env-file .env up --build --detach

start-compose-container:
	docker-compose --env-file .env up --detach

stop-all-compose-projects:
	docker-compose down --volumes --rmi all