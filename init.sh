read -p "your domain:(like baidu.com, without www): " DOMAIN

read -t 10 -p "Now press ENTER to set domain."

echo "changging ./nginx/nginx.conf"
sed 's/HOST/'"$DOMAIN"'/g' ./nginx/nginx.conf

echo -i "changging ./isso/config/isso.conf"
sed -i 's/HOST/'"$DOMAIN"'/g' ./isso/config/isso.conf

echo "Now you may run :
      docker-compose build
      docker-compose pull
      docker-compose up -d
     "
