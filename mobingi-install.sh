apt-get -y install nodejs npm
update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
#npm -y install -g hubot coffee-script yo generator-hubot
npm -y install -g hubot coffee-script hubot-slack

# cd /root/scripts
# yo hubot
# npm -y install hubot-slack --save

cp -r /var/www/html /root/scripts

echo "[program:hubot]" >> /etc/supervisor/conf.d/supervisord.conf
echo "command=hubot --adapter slack" >> /etc/supervisor/conf.d/supervisord.conf
echo "directory=/root" >> /etc/supervisor/conf.d/supervisord.conf
