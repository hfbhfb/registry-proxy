
all:
	docker build -t hfbregistry:v0.0.1 .
	docker-compose up -d

clean:
	docker-compose rm -f -s 
