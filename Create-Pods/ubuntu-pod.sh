# Search images
podman search ubuntu
podman search ubuntu --filter=is-official=true --limit=10 --filter=stars=50


# get latest ubuntu
podman pull docker.io/library/ubuntu:latest
podman pull ubuntu

# list downloaded images
podman images

# remove existing pod
podman pod rm ubuntu_pod

# create a pod
podman pod create --name ubuntu_pod -p 8080:80

# create a standalone container with ubuntu image
podman run -dit --pod new:ubuntu_pod --name ubuntu_1 ubuntu bash
podman run -dit --pod ubuntu_pod --name ubuntu_container ubuntu bash

# Verify the Pod and Container are Running
podman pod ps
podman pod inspect ubuntu_pod

# Access the container
podman ps --all
podman exec -it ubuntu_container bash
