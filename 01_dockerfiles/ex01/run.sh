echo "Building image ex01"
docker build -t ex01 .

echo "Images is ready, running container"
docker run -d --name my_teamspeak --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01

echo "Server is up and running"
# Connect with local client to $(docker-machine ip Char)."
echo "When finished, run \`docker stop my_teamspeak\`"


docker logs my_teamspeak   >>>> to check the password 