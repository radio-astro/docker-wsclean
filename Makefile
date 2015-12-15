DOCKER_REPO=radioastro/wsclean:1.9

.PHONY: build clean run upload

all: run

build:
	docker build -t ${DOCKER_REPO} .

run: build
	docker run -ti ${DOCKER_REPO}

clean:
	docker rmi ${DOCKER_REPO}

upload: build
	docker push ${DOCKER_REPO}
