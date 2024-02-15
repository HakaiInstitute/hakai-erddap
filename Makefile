include .env

container_name ?= $(or $(CONTAINER_NAME),hakai-erddap-caprover)

build:
	docker build -t $(container_name) .

run:
	docker run -p 8080:8080 --tty --name $(container_name) --env-file .env $(container_name)

start:
	docker start $(container_name)

stop:
	@if [ "$(shell docker ps -aq -f name=$(container_name))" ]; then \
		echo "Container $(container_name) exists. Stopping and removing..."; \
		docker stop $(container_name); \
		echo "Container $(container_name) has been stopped and removed."; \
	else \
		echo "Container $(container_name) does not exist."; \
	fi
remove:
	@if [ "$(shell docker ps -aq -f name=$(container_name))" ]; then \
		echo "Container $(container_name) exists. Removing..."; \
		docker rm $(container_name); \
		echo "Container $(container_name) has been removed."; \
	else \
		echo "Container $(container_name) does not exist."; \
	fi

build-run: stop remove build run 

build-run-d: stop build
	docker run -d -p 8080:8080 --name $(container_name) --env-file .env $(container_name)

inside:
	docker exec -it $(container_name) /bin/bash