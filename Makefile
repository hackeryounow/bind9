DOCKER_IMAGE_OWNER = 'bind9'
DOCKER_IMAGE_NAME = 'base'
DOCKER_IMAGE_TAG = 'latest'
BIND9_VERSION = '9.20.2'
.PHONY: base
all: base bind9

base: 
	docker build -t ${DOCKER_IMAGE_OWNER}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ./base

bind9: base
	docker build --build-arg BIND9_VERSION=${BIND9_VERSION} -t ${DOCKER_IMAGE_OWNER}/bind9:v${BIND9_VERSION} ./bind9 