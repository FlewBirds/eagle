Type of Variables
    Default Variables
    Inventory Vairables(Host Vars and Group Vars)
    Facts and Local Facts
    Registered Vars etc..

Ansible defines some vairables

Play = task + target


export ANSIBLE_HOST_KEY_CHECKING=false

1022  curl -s -o /dev/null -w "%{http_code}" http://3.143.236.25/
 1023  curl -s --connection-timeout 5 -o /dev/null -w "%{http_code}" http://3.143.236.25/
 1024  curl --help | grep timeout
 1025  curl --help 
 1026  curl -s  -o /dev/null -w "%{http_code}" http://3.143.236.25/ --connect-timeout 5
 1027  ansible -i myinventory localhost -m setup
 1028  ansible -i myinventory localhost -m setup
 1029  ansible -i myinventory localhost -m setup | grep-i ansible_os_family
 1030  ansible -i myinventory localhost -m setup | grep -i ansible_os_family
 1031  ansible -i myinventory localhost -m setup 
 1032  ansible -i myinventory ubuntu -m setup 
 1033  cat myinventory
 1034  vi myinventory
 1035  ansible -i myinventory ubuntu_nodes -m setup 
 1036  vi myinventory
 1037  ansible -i myinventory ubuntu_nodes -m setup 


 