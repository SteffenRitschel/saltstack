echo "master_finger: '$(salt-key -F master| grep master.pem| awk {'print $2'})'" > /var/www/html/master_finger.conf
