#! /bin/bash
# Creating user with name John and group with name UnixTeam on hosts location in Wroclaw.Setting password bud_pool for John by ussing SHA512 encryption.  John is memmber of UnixTeam group. 
ansible -m group -a "name=UnixTeam state=present" Wroclaw --become
ansible -m user -a " name=John password='{{ 'bud_pool' | password_hash('sha512') }}' groups=UnixTeam uid=2021 state=present" Wroclaw --become
# Verification
ansible -a "grep 'John' /etc/group" Wroclaw --become
