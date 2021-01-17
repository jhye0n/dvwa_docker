### DVWA DOCKER

< compose 버전은 시간날 때 커밋 하겠슴당 >

> Repo Download
https://github.com/jhye0n/dvwa_docker.git

> Docker Build
```bash
sudo docker build --t dvwa:latest .
sudo docker run -d -p 4731:80 dvwa
```

> Connect Container && DVWA Setting
```bash
sudo docker exec -it <container_id> bash
```

```bash
service mysql restart
mysql
create database dvwa character set utf8 collate utf8_general_ci;
create user dvwa@'%' identified by 'password';
grant all privileges on *.* to 'dvwa'@'%';
flush privileges;
exit;
```

```bash
cd /var/www/html/config
cp config.inc.php.dist config.inc.php
```

> config.inc.php 파일 내 DB정보 수정

- - -

[LICENSE] DVWA(https://github.com/digininja/DVWA)
