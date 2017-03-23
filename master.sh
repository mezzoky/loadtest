docker run --rm -it --name master -p 5557:5557 -p 5558:5558 -p 8089:8089 -v `pwd`:/usr/src locust locust --master
