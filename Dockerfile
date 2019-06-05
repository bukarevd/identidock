FROM python:3.5

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==1.0.2 uWSGI==2.0.18 requests==2.5.1 redis==3.2.1
WORKDIR /app
COPY app /app
COPY script.sh /
EXPOSE 9090 9191
USER uwsgi

CMD ["/script.sh"]
