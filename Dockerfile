# FROM python base image
FROM python:3-alpine

# COPY startup script
COPY . /app

COPY ./contrast_security.yaml /app/contrast_security.yaml

WORKDIR /app

# RUN apk add --update-cache
#    python \
#    python-dev \
#    py-pip \
#    build-base \

RUN apk update && apk add python3-dev \
			py3-pip \
		        gcc \
			linux-headers \
                        libc-dev

# RUN pip3 install --upgrade setuptools pep517 virtualenv psutil
RUN pip3 install --upgrade setuptools pep517 virtualenv

RUN apk add --no-cache gawk sed bash grep bc coreutils python3-dev autoconf automake alpine-sdk
RUN pip3 install -r requirements.txt

# RUN pip3 install ./contrast-agent-4.9.1.tar.gz
RUN pip3 install contrast-agent

RUN chmod +x reset_db.sh && bash reset_db.sh

# EXPOSE port 8000 for communication to/from server
EXPOSE 8000

# CMD specifcies the command to execute container starts running.
CMD ["/app/run_app_docker.sh"]
