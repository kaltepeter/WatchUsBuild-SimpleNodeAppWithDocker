docker build -t nginx-server .
docker container run -d --name nginx-server --rm -p 80:80 -v $(pwd)/html:/usr/share/nginx/html nginx-server:latest