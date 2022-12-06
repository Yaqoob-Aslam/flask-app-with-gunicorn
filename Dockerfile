FROM python:3.8.10 
WORKDIR /home/flask/flask-dummy
RUN echo "BEFORE COPY TO DOCKER $(pwd)"

RUN echo "BEFORE COPY TO DOCKER $(ls -lsa)"
COPY . .

RUN echo "AFTER COPY TO DOCKER $(ls -lsa)"
RUN pip install -r requirements.txt


EXPOSE 8000
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
