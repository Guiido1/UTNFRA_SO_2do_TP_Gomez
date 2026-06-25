cd ~/UTN-FRA_SO_Examenes/202406/docker/
sed -i 's/Tu-Nombre Tu-Apellido/Guido Gomez/; s/Tu-Division/116/' index.html
sudo docker build -t web1-gomez .
sudo docker login -u guidogomez
sudo docker tag web1-gomez guidogomez/web1-gomez
sudo docker push guidogomez/web1-gomez
./run.sh
curl localhost:8080
