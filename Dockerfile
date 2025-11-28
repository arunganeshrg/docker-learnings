FROM ubuntu:latest
WORKDIR /opt
RUN apt-get update \
    && apt-get install -y --no-install-recommends python3 python3-pip python3-flask \
    && rm -rf /var/lib/apt/lists/*

# Allow setting NAME and HOST at build time and persist them as environment variables
# You can override at build time with: docker build --build-arg NAME=YourName --build-arg HOST=yourhost -t image-name .
ARG NAME=Buddy
ARG HOST=0.0.0.0
ENV NAME=${NAME}
ENV HOST=${HOST}

COPY app.py /opt/
EXPOSE 5000
CMD ["python3", "app.py"]