FROM python:3.7.3-stretch

WORKDIR /python-flask

COPY . /python-flask

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
               pip install --upgrade setuptools &&\
	       pip install -r requriment.txt

EXPOSE 80

CMD["python","./app.py"] 
