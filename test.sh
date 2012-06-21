#!/bin/bash

#Tiddlyspace Install for Ubuntu 11.04
#Assumptions:
#-Basic server build
#-Networking enabled and working (proxy's configured)
#-Aim to be able to git clone script and then execute it with putty
#-OS already updated with all patches
#-Python 2.7 already present
#-GCC present
#------------
#execute sript While logged in as root or a user with admin rights

#Based on C Dents instructions for tiddlyspace

#Refer to C Dents Tiddlyweb Instructons
#Following section on Installing on Ubuntu
sudo apt-get install python-pip python-dev
sudo pip install -U pip
sudo pip install -U tiddlywebwiki 
#back to C Dents Instructions for tiddlyspace
sudo apt-get install libmysqlclient-dev

#install mysql-server
sudo apt-get install mysql-server

sudo pip install -U tiddlywebplugins.tiddlyspace
# The above wasn't sudo in instructions

#Configure a tiddlyspace database
mysql -u root -p
create database tiddlyspace
GRANT ALL PRIVILEGES ON tiddlyspace.* TO '<tiddlydbuser>'@'localhost'; \g 
# IDENTIFIED BY '<dbpassword>';
quit \g
# Am still puzzled by the above - do I need an account called tiddlydbuser?  
# Does the password for that account need to go here or elsewhere?
# If the database is called something else what else must we change?

# The above database config exactly as per C Dent intructions
# skip db_config.py

tiddlyspace tiddlyspace_instance  # Errors received at this point
#  "Access denied for user 'jsavage'@'localhost' (using password: NO)") None None
# Question - what if we want to repeat the tiddlyspace command?  Is there an option to over-write existing stuff? 
