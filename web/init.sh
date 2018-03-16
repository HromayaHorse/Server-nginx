sudo rm /etc/nginx/sites-enabled/test.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nhinx/sites-enabled/tesr.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/ngimx restart

sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart

sudo /etc/init.d/mysql restart
mysql -u root -e "CREATE DATABASE qa CHARACTER SET itf8" :P
