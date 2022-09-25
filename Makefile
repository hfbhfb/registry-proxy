
all:
	docker build -t hfbregistry:v0.0.1 .
	docker build -t hfbregistry-ui:v0.0.1 -f Dockerfile-ui
	docker-compose up -d

clean:
	docker-compose rm -f -s 
