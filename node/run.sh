# build the image and run the container
docker build -t node-app .
docker container run -d --name node-app --rm -p 8888:8888 -v $(pwd)/src:/usr/src/app/src/ node-app:latest