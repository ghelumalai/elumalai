FROM debian
MAINTAINER Elumalai
RUN apt update
RUN apt install python-dev python-pip -y
COPY ./requirements.txt /data/requirements.txt
WORKDIR /data
RUN pip install -r requirements.txt 
COPY . /data
ENTRYPOINT ["python"]
CMD ["web.py"]

