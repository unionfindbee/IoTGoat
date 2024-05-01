
MAYHEM_DOCKER_REGISTRY=$(mayhem docker-registry)
DURATION=180
OWNER=forallsecure

docker build -t $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem -f DockerfileMayhem .
docker push $MAYHEM_DOCKER_REGISTRY/bengutierrez/iotgoat-mayhem

mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/motorola-bin.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/nand_ecc.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/osbridge-crc.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/otrx.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/padjffs2.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/patch-cmdline.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/patch-dtb.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/pc1crypt.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/ptgen.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/spw303v.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/sstrip.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/trx.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/trx2edips.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/xorimage.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/zyxbcm.mayhemfile .
mayhem run --duration $DURATION --owner $OWNER -f mayhemfiles/zyimage.mayhemfile .

