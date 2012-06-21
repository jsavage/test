#Tiddlyspace Install for Ubuntu 11.04
#updated with all patches
#Python 2.7
#GCC
#------------
#While Logged in a jsavage - user with admin rights

#Followed C Dents instructions for tiddlyspace

#>Tiddlyweb Instructons
#>Installing on Ubuntu
sudo apt-get install python-pip python-dev
sudo pip install -U pip
sudo pip install -U tiddlywebwiki 
#>back to C Dents Instructions for tiddlyspace
sudo apt-get install libmysqlclient-dev
# install mysql-server
sudo apt-get install mysql-server

sudo pip install -U tiddlywebplugins.tiddlyspace
# The above wasn't sudo in instructions

mysql -u root -p
create database tiddlyspace
GRANT ALL PRIVILEGES ON tiddlyspace.* TO '<tiddlydbuser>'@'localhost' IDENTIFIED BY '<dbpassword>';
quit
# Am still puzzled by the above - do I need an account called tiddlydbuser?  Does the password for that
# account need to go here or elsewhere?

# The above database config exactly as per C Dent intructions
# skip db_config.py

tiddlyspace tiddlyspace_instance  # Errors received at this point
