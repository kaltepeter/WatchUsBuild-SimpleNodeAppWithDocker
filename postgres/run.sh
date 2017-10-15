
docker build -t node-db .
docker container run -d --name node-db --rm -p 9000:5432 -v $(pwd)/data:/var/lib/postgresql/data node-db:latest