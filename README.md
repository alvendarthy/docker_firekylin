# Default db configs
db user = blog

db host = mysql

db pwd = 123456

db name = firekylin

# How to

0. sh init.sh
1. docker-compose build && docker-compose pull
1. docker-compose up -d
2. visit http://hostIP to install
3. goto admin dashboard -> system settings -> comment settings -> comment types -> other
   
   then fill the blank like this:
   ```

   <script data-isso="//www.your.domain/isso"
        src="//www.your.domain/isso/js/embed.min.js"></script>
   <section id="isso-thread"></section>

   ```
