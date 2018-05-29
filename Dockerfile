FROM python:latest
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY bootstrap.sh /bootstrap.sh
RUN chmod +x /bootstrap.sh
CMD /bootstrap.sh
