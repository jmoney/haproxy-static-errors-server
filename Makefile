APPLICATION_NAME=haproxy-notfound-server

build:
	docker build . \
		--build-arg APPLICATION_NAME=$(APPLICATION_NAME) \
		-t $(APPLICATION_NAME):latest

run: build
	sudo docker-compose up
