FROM ubuntu:latest
WORKDIR /opt
RUN apt-get update \
    && apt-get install -y --no-install-recommends python3 python3-pip python3-flask \
    && rm -rf /var/lib/apt/lists/*
COPY app.py /opt/
EXPOSE 5000
CMD ["python3", "app.py"]