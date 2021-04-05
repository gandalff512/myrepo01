FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp
WORKDIR /tmp
RUN pip install -qr requirements.txt
ADD app.py /opt/webapp
EXPOSE 5000
CMD /opt/webapp/app.py run