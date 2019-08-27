APPLICATION_NAME=haproxy-static-errors-server

build:
	docker build . \
		--build-arg APPLICATION_NAME=$(APPLICATION_NAME) \
		-t $(APPLICATION_NAME):latest

run: build
	docker-compose up
