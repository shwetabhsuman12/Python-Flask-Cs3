FROM python:3
USER root
WORKDIR /usr/src/app
COPY . .
RUN ls
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=visualiser.py
CMD ["flask","run","--host=0.0.0.0"] 

