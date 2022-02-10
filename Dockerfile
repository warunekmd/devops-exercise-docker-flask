FROM ubuntu

WORKDIR /devops-exercise-docker-flask

COPY . .

RUN apt-get update

RUN apt-get -y install python3

#RUN apt-get -y upgrade python3

RUN apt-get -y install python3-pip

RUN python3 -m pip install --upgrade pip

RUN pip3 install -r requirements.txt

CMD python3 app.py
