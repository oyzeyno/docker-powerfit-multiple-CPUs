# docker-powerfit-multiple-CPUs
Dockerfile for PowerFit using single/multiple CPUs

Base image: ubuntu:14.04

###Building docker image named "powerfit":
docker build -t powerfit .

###Run the container in interactive mode:
docker run -it powerfit

###List the containers:
docker ps -a

###Stop the container:
docker stop <i>containername</i>

###Delete the container
docker rm <i>containername</i>

###List the images
docker images

###Delete the image
docker rmi <i>imageID</i>

