FROM registry.access.redhat.com/ubi9/python-312:1@sha256:060d8a6a97ce8949fa59ef9c527c809211fc09eb896464b376d0b04b37efad15

WORKDIR /opt
COPY requirements.txt requirements2.txt .
RUN pip install -r requirements.txt -r requirements2.txt

COPY helloworld.py .

CMD ["python", "/opt/helloworld.py"]
