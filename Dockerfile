FROM python:3-slim
COPY requirements.txt /
RUN pip --no-cache-dir install -r requirements.txt
COPY lint /usr/local/bin/lint
WORKDIR /code
CMD ["lint"]