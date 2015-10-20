FROM python:2.7

RUN apt-get install -y libffi-dev libssl-dev
RUN pip install butterfly
RUN echo "root\root\n" | passwd root

EXPOSE 9191
ENTRYPOINT ["butterfly.server.py"]
CMD ["--unsecure", "--port=9191", "--host=0.0.0.0"]