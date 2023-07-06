FROM python:3-alpine

RUN pip install flake8
RUN pip install flake8-sarif

WORKDIR /apps

ENTRYPOINT ["flake8"]
CMD ["--help"]
