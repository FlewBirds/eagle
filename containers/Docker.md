What is Docker?

Installing Docker
Docker Componenets
Docker Applications
Build Docker images
Docker Contianer states
Docker networking
docker volumes
docker commands
backup docker images
docker registry
docker compose


########### Docker commands #######

  636  sudo yum install docker
  637  sudo yum install docker=docker-18.09.9ce-2.amzn2.x86_64
  638  sudo yum install docker=18.09.9ce-2.amzn2.x86_64
  639  sudo yum install docker-18.09.9ce-2.amzn2.x86_64
  640  sudo yum install docker
  641  sudo systemctl enable docker
  642  sudo systemctl start docker
  643  sudo systemctl status docker
  644  sudo journalctl -xefu /usr/lib/systemd/system/docker.service
  645  sudo journalctl -xefu docker.service
  646  sudo journalctl -xeu docker.service
  647  sudo journalctl -xefu docker.service
  648  sudo journalctl -xefu jenkins
  649  docker info
  650  sudo docker info
  651  docker ps
  652  ls -lrth /var/run/docker.sock
  653  #sudo usermod -aG docker ec2-user
  654  echo $USER
  655  sudo usermod -aG docker $USER
  656  cat /etc/group | grep docker
  657  docker ps
  658  logout
  659  docker ps
  660  docker
  661  docker -version
  662  docker --version
  663  docker version
  664  docker ps
  665  docker images
  666  ss -nltp | grep docker
  667  ss -ntlp
  668  # docker port number is 2375
  669  # docker server process is dockerd
  670  ps -ef | grep docker
  671  docker ps
  672  # on windows docker socker is --> //./pipe/docker_engine
  673  sudo systemctl status docker
  674  vi /usr/lib/systemd/system/docker.service
  675  docker run -D hello-world
  676  docker --help | less
  677  docker run hello-world -D
  678  docker --help
  679  docker run hello-world
  680  sudo journalctl -xefu docker
  681  docker ps
  682  docker run -it ubuntu bash
  683  docker ps
  684  docker ps -a
  685  docker ps
  686  docker run -it ubuntu bash
  687  docker ps
  688  docker exec -it e7ab4f31ba1e /bin/bash
  689  docker ps
  690  docker stop e7ab4f31ba1e
  691  docker ps
  692  history

  ###################################

  https://hub.docker.com/_/httpd

   1181  docker build -t evonyee:add_v4 .
 1182  docker run -d -p80:80 evonyee:add_v4 
 1183  docker logs
 1184  docker ps
 1185  docker ps -a
 1186  docker logs ceeaaf842be9
 1187  docker images
 1188  docker run -it --entrypoint=/bin/bash 30710522400e
 1189  docker ps
 1190  docker build -t evonyee:add_v4 .
 1191  docker run -d -p80:80 evonyee:add_v4 
 1192  docker ps
 1193  docker logs ec48d3b08e1e
 1194  docker logs ec48d3b08e1e
 1195  docker logs ec48d3b08e1e
 1196  docker logs -f ec48d3b08e1e
 1118  scooby
 1119  docker ps
 1120  docker ps
 1121  docker inspect
 1122  docker inspect evonyee
 1123  docker inspect e376baec980e
 1124  docker exec -it e376baec980e /bin/bash
 1125  docker ps
 1126  docker commit e376baec980e -t evonyee:v2
 1127  docker commit e376baec980e evonyee:v2
 1128  docker images
 1129  docker ps
 1130  docker run -it -p80:80 evonyee:v2 
 1131  docker run -it -p80:80 evonyee:v2 
 1132  docker ps
 1133  ls
 1119  wget https://www.free-css.com/assets/files/free-css-templates/download/page285/evonyee.zip
 1120  ls
 1121  unzip evonyee.zip
 1122  ls
 1123  ls
 1124  cd evonyee
 1125  ls
 1126  ls
 1127  cd ..
 1128  ls
 1129  vi Dockerfile
 1130  vi Dockerfile
 1131  docker build -t evonyee:v1 .
 1132  docker build -t evonyee:v1 .
 1133  docker images
 1134  docker run -it evonyee:v1
 

