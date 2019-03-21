db user = blog
db host = mysql
db pwd = 123456
db name = firekylin

0. edit isso/conf/isso.conf
   set your domain
1. docker-compse up -d
2. visit http://hostIP to setup



#### nginx config

    server {
        listen       80;
        server_name  www.your.domain;

        location / {
            proxy_http_version 1.1;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header Host $http_host;
            proxy_set_header X-NginX-Proxy true;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";

            proxy_pass http://127.0.0.1:8001;
            proxy_redirect off;
        }

        location /isso/ {
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Script-Name /isso;
                proxy_set_header Host $host;
                proxy_set_header X-Forwarded-Proto $scheme;
                proxy_pass http://localhost:8002/;
        }
    }
