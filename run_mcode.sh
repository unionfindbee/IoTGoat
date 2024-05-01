
MAYHEM_DOCKER_REGISTRY=$(mayhem docker-registry)

docker build -t $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem -f DockerfileMayhem .
docker push $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem

#mayhem run -f mayhemfiles/patch-cmdline.mayhemfile .
#mayhem run -f mayhemfiles/patch-dtb.mayhemfile .
mayhem run -f mayhemfiles/sstrip.mayhemfile .