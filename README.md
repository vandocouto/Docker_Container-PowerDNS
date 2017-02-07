# POWER DNS

- Create volume to container's
<pre>
# docker volume create mysql
# docker volume create powerdns
</pre>
- Build project
<pre>
# docker build -f build/Dockerfile  -t powerdns:1.0.0 .
</pre>
# Up container's
<pre>
# docker-compose up -d
 Creating mysql
 Creating powerdns
</pre>
- Access the powerdns container
<pre>
# docker exec -it ID bash
</pre>
- Moving the install directory
<pre>
# cd /var/www/html/poweradmin/
# mv install/ install-old
</pre>
- Include config.inc.php file
<pre>
# cd inc/
</pre>
- Copy
<pre>
# vim config.inc.php
</pre>

