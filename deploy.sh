sudo docker pull mirkogutierrezappx/mail-service:latest
sudo docker stop mail-service-container 2>/dev/null
sudo docker rm mail-service-container 2>/dev/null

sudo docker build -t mail-service .

sudo docker run \
           --restart always \
           -d -p 8084:8084 \
           --env-file .env \
           --network appx \
           --name mail-service-container mail-service \
        mirkogutierrezappx/mail-service:latest
