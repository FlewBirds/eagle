ping

yum

$ansible localhost -m yum -a "name=httpd state=present enabled=true" -b

$ansible localhost -m systemd -a "name=httpd enabled=true" -b

$ansible localhost -m systemd -a "name=httpd state=started enabled=true" -b


Filter data
cat /etc/httpd/conf/httpd.conf 
f

check syntax check
[ec2-user@ip-10-0-19-79 conf]$ httpd -t
Syntax OK

$ansible localhost -m copy -a "src=/tmp/custom_httpd.conf dest=/etc/httpd/conf/httpd.conf backup=true mode='u=rwx,g=rx,o=r' owner=apache group=apache" -b


environment - qa
variable_file - qa2-config.yml

mesos 
    haproxy - yml
    pgbouncer - yml
    rsyslog - yml
    filebeat - yml
    mesos-slave - docker service #
    docker 
    docker - registry
    /etc/hosts
    logrotate
    cronjobs - to cleanup jobs
    docker iptables

    blocks
    
zookeeper - jinja templates
        zookeeper1,zookeeper2,zookeeper3



