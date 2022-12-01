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

  