FROM python:3.9-slim

COPY . /app

WORKDIR /app


RUN python3 -m venv /opt/venv/


RUN  /opt/venv/bin/pip  install pip --upgrade && \
     /opt/venv/bin/pip  install -r requirements.txt && \
    chmod +X entrypoint.sh

RUN ls /opt/venv/bin

CMD ["/app/entrypoint.sh"]