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

1: |
![Alt text](img/1.png?raw=true "Image 1")
2
![Alt text](img/2.png?raw=true "Image 2")
3
![Alt text](img/3.png?raw=true "Image 3")
4
![Alt text](img/4.png?raw=true "Image 4")
5
![Alt text](img/5.png?raw=true "Image 5")
6
![Alt text](img/6.png?raw=true "Image 6")
7
![Alt text](img/7.png?raw=true "Image 7")
8
![Alt text](img/8.png?raw=true "Image 8")
9
![Alt text](img/9.png?raw=true "Image 9")
10
![Alt text](img/10.png?raw=true "Image 10")

