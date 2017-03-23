# docker run --rm -it --link master:master -v `pwd`:/usr/src locust locust --slave --master-host=master
docker run --rm --name slave -it -v `pwd`:/usr/src locust locust --slave --master-host=192.168.99.100
