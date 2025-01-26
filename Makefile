IMAGE = ghcr.io/ondrejsika/caddy-lab-proxy

default: docker-build-and-run

docker-build-and-run:
	@make docker-build
	@make docker-run

docker-build:
	docker build --platform linux/amd64 -t ${IMAGE} .

docker-run:
	docker run -d -p 80:80 -p 443:443 ${IMAGE}
