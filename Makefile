
all:
	docker build -t hfbregistry:v0.0.1 .
	docker build -f Dockerfile-ui  -t hfbregistry-ui:v0.0.1  .
	openssl req  -newkey rsa:2048 -nodes -sha256 -keyout ./cert/server.key -x509 -days 365 -out ./cert/server.crt -subj "/C=CN/ST=Beijin/O=Devops/CN=render.tpddns.cn"
	docker-compose up -d

clean:
	docker-compose rm -f -s 
