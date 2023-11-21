#https://www.smarthomebeginner.com/install-plexpy-using-docker/
#https://hub.docker.com/r/linuxserver/plexpy

sudo docker create --name=plexpy \
--restart=always \
-v /mnt/sda1/plexpyconfig:/config \
-v /mnt/sda1/plexpylogs:/logs:ro \
-e PGID=100 -e PUID=1000 \
-p 8181:8181 \
linuxserver/plexpy

	
#sudo docker start plexy
