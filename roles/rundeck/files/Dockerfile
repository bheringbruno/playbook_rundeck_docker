FROM rundeck/rundeck:3.1.0

USER root

RUN apt-get update
RUN apt-get -y install python-pip mysql-client
RUN pip install 'ansible==2.8'

USER rundeck
