#!bin/bash
apt update
apt install -y nginx

# Replace the default <h1> tag content with "Welcome to Homepage"
sudo sed -i 's/<h1>Welcome to nginx!<\h1>/<h1>Welcome to Homepage<\h1>/' /var/www/html/index.nginx-debian.html

#Add additional lines to the HTML file
echo <a href="https://www.suryaprasad.xyz/movies/">Visit For Movies</a>' | sudo tee -a /var/www/html/index.nginx-debian.html
echo '</div>' | sudo tee -a /var/www/html/index.nginx-debian.html
echo '<br>' | sudo tee -a /var/www/html/index.nginx-debian.html
echo <a href="https://www.suryaprasad.xyz/shows/">Visit For Shows</a>' | sudo tee -a /var/www/html/index.nginx-debian.html

sudo systemctl start nginx
sudo systemctl enable nginx
