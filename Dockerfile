FROM python:latest

RUN pip install awscli
RUN pip install aws-sam-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]