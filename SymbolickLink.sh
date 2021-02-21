#! /bin/bash
#This script uses the AD-HOC command to create symbolic links on managed hosts.

ansible -m file -a "path=/root/vehicle/truck state=directory" Poland --become
ansible -m file -a "path=/root/vehicle/truck/BrakesTest mode=g+rwx,o+rx owner=ansibleuser group=ansibleuser state=touch" Poland --become
ansible -m file -a "src=/root/vehicle/truck/BrakesTest dest=/root/BrakesTest state=link" Poland --become

