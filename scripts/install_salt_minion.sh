

#wget -O - https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
wget -O - https://repo.saltstack.com/apt/debian/9/amd64/2018.3/SALTSTACK-GPG-KEY.pub | sudo apt-key add -

#deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main
echo "deb http://repo.saltstack.com/apt/debian/9/amd64/2018.3 stretch main">/etc/apt/sources.list.d/saltstack.list

sudo apt-get update

echo "master: 10.0.1.0">/etc/salt/minion.d/master.conf
curl http://wels/master_finger.conf > /etc/salt/minion.d/master_finger.conf2

sudo apt-get install salt-minion

sudo systemctl restart salt-minion
