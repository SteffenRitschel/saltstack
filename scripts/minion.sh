

echo "deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main" > /etc/apt/sources.list.d/saltstack.list
wget -O - https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -


apt-get update

sudo apt-get install salt-minion
echo "master: 10.0.1.0" > /etc/salt/minion.d/master.conf
sudo systemctl restart salt-minion
