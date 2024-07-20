sudo docker build -t agu-mysql -f Dockerfile .
sudo docker image ls
sudo docker run --rm --name agu-mysql-container agu-mysql
sudo docker ps
sudo docker exec -i agu-mysql-container mysql -uroot -pmasterkey < scripts/createdb.sql
docker-compose up -d
# for down service: docker-compose down
# sudo docker exec -it agu-mysql-container /bin/bash
# sudo docker stop agu-mysql-container
# sudo docker run -d -v $(pwd)/db/data:/var/lib/mysql -p3306:3306 --rm --name agu-mysql-container mysql
