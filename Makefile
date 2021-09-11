DOCKER_RUN:=\
	docker run --rm \
	-u $(shell id -u):$(shell id -g) \
	-v $(shell pwd):/opt/share \
	-w /opt/share \
	docker:bullseye-slim /bin/bash -c

# Build targets with docker for linux arm64 architecture
docker_build:
	docker build . -t compilation-frido