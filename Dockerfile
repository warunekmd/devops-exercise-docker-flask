FROM ubuntu

WORKDIR /devops-exercise-docker-flask

COPY . .

RUN apt-get update

RUN apt-get -y install python3

RUN apt-get -y install python3-pip

RUN python3 -m pip install --upgrade pip

RUN pip3 install -r requirements.txt

ENV PATH="~/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"

EXPOSE 5000

#CMD ["flask", "run"]

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

