# tale-docker
tale docker

# 使用说明
下载到本地,使用`docker build -t tale:1.0 . ` 命令构建tale镜像

将tale*.jar,lib目录和resources目录放在宿主机的/home/tale目录下,之后使用下面的命令启动tale的docker容器

``` bash
docker run -d --privileged --hostname tale --name tale 
-v /etc/localtime:/etc/localtime:ro 
-v /home/tale:/var/tale_home -p 127.0.0.1:80:9000 
-m 1024m --memory-swap -1 tale:1.0 
```

命令说明:
- run -d                               #后台运行
- v /etc/localtime:/etc/localtime:ro  #容器使用宿主机的时间
- v /home/tale:/var/tale_home         #宿主机的/home/tale与容器的/var/tale_home关联,可自行修改***/home/tale***
- p 127.0.0.1:80:9000                 #宿主机的80端口指向容器的9000端口




浏览器访问`127.0.0.1`即可


docker exec -it 33 bash tale.sh log

docker run -d --privileged --hostname tale --name tale   -v /usr/local/webapp/tale:/webapp/tale  tale:1.0

docker run -dit   -v /usr/local/webapp/tale:/webapp/tale  -p 127.0.0.1:80:9000  tale:7.0
