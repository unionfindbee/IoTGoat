
MAYHEM_DOCKER_REGISTRY=$(mayhem docker-registry)

docker build -t $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem -f DockerfileMayhem .
docker push $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem

#mayhem run --duration 600 -f mayhemfiles/patch-cmdline.mayhemfile .
#mayhem run --duration 600 -f mayhemfiles/patch-dtb.mayhemfile .
mayhem run --duration 600 -f mayhemfiles/sstrip.mayhemfile .
mayhem run --duration 600 -f mayhemfiles/trx2edips.mayhemfile .
mayhem run --duration 600 -f mayhemfiles/zyxbcm.mayhemfile .
mayhem run --duration 600 -f mayhemfiles/zyimage.mayhemfile .