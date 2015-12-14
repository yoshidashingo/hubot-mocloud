apt-get -y install nodejs npm
npm -y install -g coffee-script hubot hubot-slack

cp -r /var/www/html /root/scripts 

echo "[program:hubot]" >> /etc/supervisor/conf.d/supervisord.conf
echo "command=hubot --adapter slack" >> /etc/supervisor/conf.d/supervisord.conf
echo "directory=/root" >> /etc/supervisor/conf.d/supervisord.conf
