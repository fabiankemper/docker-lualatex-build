NS = fake0
REPO = docker-lualatex-build
IMAGE = $(NS)/$(REPO)

.PHONY: build build_ubuntu

build: build_ubuntu

build_ubuntu: Dockerfile.ubuntu
	@docker build -f Dockerfile.ubuntu -t $(IMAGE):ubuntu .

default: build
