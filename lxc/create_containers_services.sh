# https://docs.docker.com/install/linux/linux-postinstall/
# Only to crete containers
docker run --name postgresql-container    -p 5432:5432               -d postgres:9.4
docker run --name mariadb-container       -p 3306:3306               -e MYSQL_ROOT_PASSWORD=root -d mariadb:10.3 
docker run --name redis-container         -p 6380:6380               -d redis:latest
docker run --name elasticsearch-container -p 9200:9200 -p 9300:9300  -d docker.elastic.co/elasticsearch/elasticsearch:5.6.12
