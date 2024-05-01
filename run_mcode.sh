
MAYHEM_DOCKER_REGISTRY=$(mayhem docker-registry)

docker build -t $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem -f DockerfileMayhem .

mayhem run -f mayhemfiles/patch-cmdline.mayhemfile .