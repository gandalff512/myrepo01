FROM ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp/
RUN pip install -qr /tmp/requirements.txt
WORKDIR /opt/webapp
ADD app.py /opt/webapp
EXPOSE 5000
CMD python app.py