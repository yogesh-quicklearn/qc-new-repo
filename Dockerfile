 FROM ubuntu:16.04
 LABEL maintainer='Vinay'
 RUN apt-get update -y
 RUN apt-get install apache2 -y
 RUN apt-get install wget -y
 RUN apt-get install unzip -y
 RUN apt-get install git -y
 WORKDIR /tmp
 RUN wget https://github.com/yogesh-quicklearn/qc-new-repo/blob/d868d9976b701a80524d6ce72e36a9cad68a763a/vinayproject-master.zip
 RUN unzip master.zip
 RUN cp -r vinayproject-master/* /var/www/html/
 EXPOSE 80
 CMD ["apachectl", "-D", "FOREGROUND"]
