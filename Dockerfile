#依赖的基础镜像jdk8
FROM java:8 
#需要暴露出去的端口，也就是我项目的端口
EXPOSE 8888
#作者信息
MAINTAINER jiyx 
#将主机环境的jar包，以文件名demo.jar添加到docker镜像中。就是因为这条命令，mavnen运行报错
ADD /target/springGuideBySelf-1.0-SNAPSHOT.jar demo.jar
#启动容器之后，默认的运行命令
ENTRYPOINT ["java","-jar","demo.jar"] 