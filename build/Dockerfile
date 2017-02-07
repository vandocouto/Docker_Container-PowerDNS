# Imagem padrão CentOS 6
FROM centos:centos6

# Atualizando o container 
RUN yum install -y epel-release.noarch 

# Instalando o PowerDNS
RUN yum install -y vim pdns pdns-backend-mysql httpd php php-mcrypt php-pdo php-mysql wget bind-utils mysql tar mcrypt openssh-server openssh-client

# Instalando o PowerADMIN
RUN wget http://downloads.sourceforge.net/project/poweradmin/poweradmin-2.1.7.tgz -P /opt && \
    tar -xvf /opt/poweradmin-2.1.7.tgz && \
    cp -rf poweradmin-2.1.7 /var/www/html/poweradmin/ && \
    chown apache.apache -R /var/www/html/poweradmin && \
    echo -e "Alias /poweradmin /var/www/html/poweradmin/" | tee /etc/httpd/conf.d/poweradmin.conf && \
    echo "ServerName *:80" >> /etc/httpd/conf/httpd.conf

# Exportando LANG=C
RUN echo 'export LANG=C' >> /etc/profile

# localtime
RUN rm /etc/localtime && \
    ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Workdir
WORKDIR /

# Copy
COPY start.sh  /  
COPY pdns.sql  /  
COPY pdns.conf /etc/pdns/ 
COPY .htaccess /var/www/html/poweradmin/

# Rodando o ./start.sh
ENTRYPOINT ["/start.sh"]

# Expose 
EXPOSE 53 80
