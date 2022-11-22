ping

yum

$ansible localhost -m yum -a "name=httpd state=present enabled=true" -b

$ansible localhost -m systemd -a "name=httpd enabled=true" -b

$ansible localhost -m systemd -a "name=httpd state=started enabled=true" -b


Filter data
cat /etc/httpd/conf/httpd.conf | grep  -o '^[^#]*' | awk 'NF'

check syntax check
[ec2-user@ip-10-0-19-79 conf]$ httpd -t
Syntax OK

$ansible localhost -m copy -a "src=/tmp/custom_httpd.conf dest=/etc/httpd/conf/httpd.conf backup=true mode='u=rwx,g=rx,o=r' owner=apache group=apache" -b



