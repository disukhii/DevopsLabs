sudo yum install epel-release -y

sudo yum install nginx -y

sudo systemctl start nginx

systemctl start firewalld

systemctl enable firewalld

sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

sudo systemctl enable nginx
sudo cp -f /vagrant/index.html /usr/share/nginx/html/index.html
