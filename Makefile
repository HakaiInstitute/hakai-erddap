docker-build:
	docker build -t hakai-erddap .
docker-run:
	docker run -p 8080:8080  --name hakai-erddap-dev --env-file .env hakai-erddap 
docker-rm:
	docker rm hakai-erddap-dev
	