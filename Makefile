IMAGE = ghcr.io/ondrejsika/caddy-lab-proxy

docker-build:
	docker build --platform linux/amd64 -t ${IMAGE} .

docker-run:
	docker run -d -p 80:80 -p 443:443 ${IMAGE}
