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


     1  python -version
    2  python --version
    3  amazon-linux-extras install python3
    4  sudo amazon-linux-extras install python3
    5  python3 --version
    6  sudo yum -y groupinstall "Development Tools"
    7  yum upgrade
    8  sudo yum upgrade
    9  sudo yum -y install gcc devel libffi-devel openssl11 openssl11-devel
   10  wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
   11  rm Python-3.10.0.tgz 
   12  wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz
   13  tar -xzf Python-3.11.0.tgz 
   14  ls -lrlth
   15  sudo mv Python-3.11.0 /opt
   16  su root
   17  sudo su
   18  vi myinventory
   19  wget https://www.free-css.com/assets/files/free-css-templates/download/page285/seo-dream.zip
   20  https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip
   21  wget https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip
   22  wget https://www.free-css.com/assets/files/free-css-templates/download/page285/evonyee.zip
   23  vi httpd_conf_decorative
   24  vi httpd_conf_bitcoin
   25  vi httpd_conf_seo
   26  pip3.11 install ansible
   27  pip3.11 install --upgrade pip
   28  pip3.11 install wheel
   29  ansible --version
   30  ansible-config
   31  ansible-config view
   32  ansible-config dumo
   33  ansible-config dump
   34  ansible-config dump > ansible.cfg
   35  vi ansible.cfg 
   36  ansible version
   37  ansible --version
   38  vi ansible.cfg 
   39  ansible-config init --disabled > ansible.cfg 
   40  vi ansible.cfg 
   41  anislbe -i myinventory -m ping
   42  ansilbe -i myinventory -m ping
   43  ansible -i myinventory -m ping
   44  ansible -i myinventory all -m ping
   45  export ANSIBLE_HOST_KEY_CHECKING=false
   46  ansible -i myinventory all -m ping
   47  chmod 400 fb_eagle.cer 
   48  ansible -i myinventory all -m ping
   49  vi myinventory 
   50  ansible -i myinventory all -m ping
   51  vi myinventory 
   52  ansible -i myinventory 
   53  clear
   54  vi myinventory 
   55  vi httpd_web.yml
   56  vi httpd_web.yml 
   57  ls
   58  ./httpd_web.yml 
   59  chmod +x httpd_web.yml 
   60  ./httpd_web.yml 
   61  ansible-playbook 
   62  which ansible-playbook
   63  vi httpd_web.yml 
   64  ./httpd_web.yml 
   65  vi httpd_web.yml 
   66  ansible-playbook httpd_web.yml 
   67  ansible-playbook all httpd_web.yml 
   68  ansible-playbook -i myinventory all  httpd_web.yml 
   69  ansible-playbook -i myinventory  httpd_web.yml 
   70  hostname
   71  vi httpd_web.yml 
   72  ansible-playbook -i myinventory  httpd_web.yml 
   73  vi httpd_web.yml 
   74  ansible-playbook -i myinventory  httpd_web.yml 
   75  vi httpd_web.yml 
   76  ansible-playbook -i myinventory  httpd_web.yml 
   77  vi httpd_web.yml 
   78  ansible-playbook -i myinventory  httpd_web.yml 
   79  vi httpd_web.yml 
   80  ansible-playbook -i myinventory  httpd_web.yml 
   81  vi httpd_web.yml 
   82  ansible-playbook -i myinventory  httpd_web.yml 
   83  vi httpd_web.yml 
   84  ansible-playbook -i myinventory  httpd_web.yml 
   85  ansible all -m setup
   86  ansible -i myinventory all -m setup
   87  vi register_module.yml
   88  cat httpd_web.yml 
   89  vi register_module.yml
   90  clear
   91  vi register_module.yml 
   92  ansible-playbook register_module.yml 
   93  ansible-playbook -i myinventory register_module.yml 
   94  vi register_module.yml 
   95  ansible-playbook -i myinventory register_module.yml 
   96  vi register_module.yml 
   97  ansible-playbook -i myinventory register_module.yml 
   98  vi register_module.yml 
   99  ansible-playbook -i myinventory register_module.yml 
  100  vi register_module.yml 
  101  ansible-playbook -i myinventory register_module.yml 
  102  vi register_module.yml 
  103  ansible-playbook -i myinventory register_module.yml 
  104  vi register_module.yml 
  105  cp register_module.yml set_fact_module.yml
  106  vi set_fact_module.yml 
  107  ansible-playbook -i myinventory set_fact_module.yml 
  108  vi input_out_vars.yml
  109  ansible-playbook -i myinventory input_out_vars.yml 
  110  vi input_out_vars.yml
  111  ansible-playbook -i myinventory input_out_vars.yml 
  112  vi input_out_vars.yml
  113  ansible-playbook -i myinventory input_out_vars.yml 
  114  vi input_out_vars.yml
  115  ansible-playbook -i myinventory input_out_vars.yml 
  116  vi input_out_vars.yml
  117  ansible-playbook -i myinventory input_out_vars.yml 
  118  vi input_out_vars.yml
  119  ansible-playbook -i myinventory input_out_vars.yml 
  120  vi input_out_vars.yml
  121  ansible-playbook -i myinventory input_out_vars.yml 
  122  vi input_out_vars.yml
  123  ansible-playbook -i myinventory input_out_vars.yml 
  124  vi input_out_vars.yml
  125  ansible-playbook -i myinventory input_out_vars.yml 
  126  vi input_out_vars.yml
  127  ansible-playbook -i myinventory input_out_vars.yml 
  128  vi input_out_vars.yml
  129  ansible-playbook -i myinventory input_out_vars.yml 
  130  vi input_out_vars.yml
  131  ansible-playbook -i myinventory input_out_vars.yml 
  132  vi input_out_vars.yml
  133  ansible-playbook -i myinventory input_out_vars.yml 
  134  vi input_out_vars.yml
  135  ansible-playbook -i myinventory input_out_vars.yml 
  136  vi input_out_vars.yml
  137  cp input_out_vars.yml read_vars_yaml_file.yml
  138  vi read_vars_yaml_file.yml 
  139  vi variable_user_values.yml
  140  ansible-playbook -i myinventory read_vars_yaml_file.yml 
  141  vi variable_user_values.yml
  142  ansible-playbook -i myinventory read_vars_yaml_file.yml 
  143  vi variable_user_values.yml
  144  ansible-playbook -i myinventory read_vars_yaml_file.yml 
  145  ll
  146  vi variable_user_values.yml
  147  vi read_vars_yaml_file.yml 
  148  ansible-playbook -i myinventory read_vars_yaml_file.yml 
  149  ansible-playbook -i myinventory read_vars_yaml_file.yml -e "name=vijay age=26"
  150  vi read_vars_yaml_file.yml 
  151  ansible-playbook -i myinventory read_vars_yaml_file.yml -extra-var "name=vijay age=26"
  152  ansible-playbook -i myinventory read_vars_yaml_file.yml --extra-var "name=vijay age=26"
  153  clear
  154  ls
  155  cat httpd_web.yml 
  156  l
  157  ll
  158  cat ansible.cfg 
  159  history 
  160  alternatives --config java
  161  java -version
  162  sudo yum install java-1.8.0-openjdk
  163  java -version
  164  yum install java-openjdk11
  165  sudo yum install java-openjdk11
  166  amazon-linux-extras install java-openjdk11
  167  sudo amazon-linux-extras install java-openjdk11
  168  alternatives --config java
  169  sudo alternatives --config java
  170  java -version
  171  celar
  172  clear
  173  history
  174  clear
  175  history
  176  vi tags_play.yml
  177  ansible-playbook localhost tags_play.yml 
  178  vi myinventory 
  179  ansible-playbook -i myinventory localhost tags_play.yml 
  180  ansible-playbook -i myinventory tags_play.yml 
  181  ansible-playbook tags_play.yml --tags four
  182  ansible-playbook tags_play.yml --tags second
  183  vi myinventory 
  184  vi tags_play.yml 
  185  ansible-playbook tags_play.yml --tags first
  186  vi tags_play.yml 
  187  ansible-playbook tags_play.yml --tags first
  188  vi tags_play.yml 
  189  ansible-playbook tags_play.yml --tags first
  190  vi tags_play.yml 
  191  vi httpd_web.yml 
  192  vi myinventory 
  193  ansible-playbook httpd_web.yml --tags global
  194  vi myinventory 
  195  vi httpd_web.yml 
  196  ansible-playbook httpd_web.yml --tags global
  197  ansible-playbook -i myinventory httpd_web.yml --tags global
  198  export ANSIBLE_HOST_KEY_CHECKING=false
  199  cat httpd_web.yml 
  200  ansible-playbook -i myinventory httpd_web.yml --tags global
  201  vi myinventory 
  202  ansible-playbook -i myinventory httpd_web.yml --tags global
  203  vi httpd_web.yml 
  204  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  205  vi myinventory 
  206  vi httpd_web.yml 
  207  vi myinventory 
  208  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  209  vi myinventory 
  210  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  211  vi httpd_web.yml 
  212  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  213  vi httpd_web.yml 
  214  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  215  vi httpd_web.yml 
  216  vi myinventory 
  217  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  218  vi httpd_web.yml 
  219  ansible-playbook -i myinventory httpd_web.yml --tags webapp
  220  vi error_handling.yml
  221  ansible-playbook -i myinventory error_handling.yml --tags webapp
  222  ansible-playbook -i myinventory error_handling.yml
  223  ls
  224  cat register_module.yml 
  225  vi error_handling.yml
  226  ansible-playbook -i myinventory error_handling.yml
  227  vi error_handling.yml
  228  ansible-playbook -i myinventory error_handling.yml
  229  vi error_handling.yml
  230  ansible-playbook -i myinventory error_handling.yml
  231  vi error_handling.yml
  232  ansible-playbook -i myinventory error_handling.yml
  233  vi error_handling.yml
  234  ansible-playbook -i myinventory error_handling.yml
  235  vi error_handling.yml
  236  ansible-playbook -i myinventory error_handling.yml
  237  vi error_handling.yml
  238  ansible-playbook -i myinventory error_handling.yml
  239  curl -s  -o /dev/null -w "%{http_code}" http://3.143.236.255/ --connect-timeout 5
  240  curl -s  -o /dev/null -w "%{http_code}" http://3.143.236.255/
  241  curl -s  -o /dev/null -w "%{http_code}" http://10.0.19.107/
  242  vi error_handling.yml
  243  curl -s  -o /dev/null -w "%{http_code}" http://10.0.19.107/
  244  ansible-playbook -i myinventory error_handling.yml
  245  vi error_handling.yml
  246  ansible-playbook -i myinventory error_handling.yml
  247  vi error_handling.yml
  248  ansible-playbook -i myinventory error_handling.yml
  249  vi error_handling.yml
  250  ansible-playbook -i myinventory error_handling.yml
  251  vi error_handling.yml
  252  cat error_handling.yml
  253  pwd
  254  vi blocks_play.yml
  255  ansible-playbook -i myinventory blocks_play.yml 
  256  vi blocks_play.yml
  257  ansible-playbook -i myinventory blocks_play.yml 
  258  vi blocks_play.yml
  259  ansible-playbook -i myinventory blocks_play.yml 
  260  vi blocks_play.yml 
  261  vi blocks_play.yml
  262  ansible-playbook -i myinventory blocks_play.yml 
  263  vi blocks_play.yml
  264  ansible-playbook -i myinventory blocks_play.yml 
  265  vi blocks_play.yml
  266  ansible-playbook -i myinventory blocks_play.yml 
  267  vi blocks_play.yml
  268  ansible-playbook -i myinventory blocks_play.yml 
  269  vi blocks_play.yml
  270  ansible-playbook -i myinventory blocks_play.yml 
  271  vi blocks_play.yml
  272  ansible-playbook -i myinventory blocks_play.yml 
  273  vi blocks_play.yml
  274  ansible-playbook -i myinventory blocks_play.yml 
  275  cat blocks_play.yml
  276  ansible -i myinventory localhost -m setup 
  277  ansible -i myinventory localhost -m setup | more
  278  ansible -i myinventory ubuntu_nodes -m setup 
  279  ansible -i myinventory ubuntu_nodes -m setup | more
  280  vi when_play.yml
  281  ansible -i myinventory when_play.yml 
  282  ansible-playbook -i myinventory when_play.yml 
  283  vi when_play.yml
  284  history