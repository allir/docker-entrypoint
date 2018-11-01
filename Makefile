default: latest

latest: Dockerfile
	@docker build . --build-arg TAG=latest -t allir/debian:latest

