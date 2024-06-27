FROM registry.access.redhat.com/ubi9/python-312:1-14@sha256:1aae71021bfc86954a80366e0e479dcb6766a1f3e1424a7e3b7c4f1538b31d96

WORKDIR /opt
COPY requirements.txt requirements2.txt .
RUN pip install -r requirements.txt -r requirements2.txt

COPY helloworld.py .

CMD ["python", "/opt/helloworld.py"]
