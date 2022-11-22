
Messages can be written in following ways
  - debug: msg="Welcome to ansible playbooks by FB"

   - debug:
      msg: "Welcome to ansible playbooks by FB"

  - debug:
     msg:
      - "Welcome to ansible playbooks by FB"
      - "Welcome to ansible playbooks by FB"
      - line2
      - line3
      <these are lists we say in python>

Using variables in messages in playbooks
---
- name: apache web servers
  hosts: global
  #become: true
  tasks:

   - debug:
      msg: "Welcome to ansible playbooks, hostname is: {{inventory_hostname}}"
      var: inventory_hostname


----

- name: apache web servers
  hosts: global
  #become: true
  tasks:

   - debug:
      msg: "default verbosity is 2"


   - debug:
       msg: "default verbosity is 2"
       verbosity: 4

...

---

VARIABLES

 -> Custom Variables/user defined variables
 -> Inventory Vars(Host Vars and Group Vars)
 -> Facts and Local Facts
 -> Registered vars

 CUSTOM VARIABLES

 Shell: x=5

 yaml: x: 4
 <key:SPACE value>
 this is called as SCALAR representation

 Example:

 ---
  - hosts: localhost
    vars:
     x: 45
     tasks:
     - debug: var=x #else you can also write as follows
        var: x
...
Multiple variables:
---
 ---
  - hosts: localhost
    vars:
     x: 45
     y: 45.6
     z: 87
     x_b: false
     y_name: saran

     gather_facts: false # to execute playbook fast
     tasks:
     - debug:
       msg:
        - "value of x is: {{x}}"
        - "value of y is: {{y}}"
        - "value of x is: {{z}}"
        - "value of y is: {{x_b}}"
        - "value of x is: {{y_name}}"




 



