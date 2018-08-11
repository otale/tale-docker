# tale-docker
tale docker

# 使用说明
把Dockerfile下载到本地,使用`docker build -t tale:1.0 . ` 命令构建tale镜像

<p>点击 <a href="http://static.biezhi.me/tale-least.zip?1231" rel="nofollow">下载</a> 最新版的Tale程序，该程序是一个zip包，解压后的目录结构如下。</p>

``` 
    tale
    ├── lib
    ├── resources
    └── tale-least.jar 
    ``` 
    
修改tale/resource/app.properties文件com.blade.logger.logFile=./tale/logs/tale.log
将run.sh放到tale目录下，目录如下,

``` 
    tale
    ├── lib
    ├── resources
    ├── tale-least.jar
    └── run.sh``` 
    
将tale目录放在宿主机的/home目录下,之后使用下面的命令启动tale的docker容器

``` bash
docker run -d --privileged --hostname tale --name tale 
-v /etc/localtime:/etc/localtime:ro 
-v /home/tale:./tale -p 127.0.0.1:80:9000 
-m 1024m --memory-swap -1 tale:1.0 
```

命令说明:
- run -d                               #后台运行
- v /etc/localtime:/etc/localtime:ro  #容器使用宿主机的时间
- v /home/tale:/var/tale_home         #宿主机的/home/tale与容器的/var/tale_home关联,可自行修改***/home/tale***
- p 127.0.0.1:80:9000                 #宿主机的80端口指向容器的9000端口
-m 1024m --memory-swap -1             #指定限制内存大小并且设置memory-swap值为-1，表示容器程序使用内存受限，而交换空间使用不受限制（宿主                                          交换支持使用多少则容器即可使用多少。如果--memory-swap设置小于--memory则设置不生效，使用默认设置）



浏览器访问`127.0.0.1`即可

一些使用说明
docker exec -it 容器id bash  ./tale/tale.sh log   查看容器内应用日志同 docker logs -f 容器id,当然你在宿主机tale log目录 tali -f 也可以看到
docker exec -it 容器id bash  ./tale/tale.sh status 容器tale状态
docker exec -it 容器id  bash ./tale/tale.sh reload 重启容器内应用
docker exec -it 容器id  bash ./tale/tale.sh stop   关掉容器内tale应用
docker exec -it 容器id  bash ./tale/tale.sh start  开启容器内tale应用
