version=$1

if [ -z "$version" ]
then
      echo "Version is empty"
      exit
else

echo ${version}

docker commit -a anrisu ubuntu-zookeeper ubuntu-zookeeper:build-$version
docker commit -a anrisu ubuntu-hadoop-master ubuntu-hadoop-master:build-$version
docker commit -a anrisu ubuntu-hadoop-edge ubuntu-hadoop-edge:build-$version
docker commit -a anrisu ubuntu-hadoop-datanode-01 ubuntu-hadoop-datanode-01:build-$version
docker commit -a anrisu ubuntu-hadoop-datanode-02 ubuntu-hadoop-datanode-02:build-$version
docker commit -a anrisu ubuntu-hadoop-datanode-03 ubuntu-hadoop-datanode-03:build-$version
docker commit -a anrisu ubuntu-mysql-server ubuntu-mysql-server:build-$version

fi
