
all:
	docker build -t hfbregistry:v0.0.1 .
	docker build -f Dockerfile-ui  -t hfbregistry-ui:v0.0.1  .
	docker-compose up -d

clean:
	docker-compose rm -f -s 
