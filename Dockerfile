FROM python:3.8

#directory for the app
WORKDIR /application
#dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
#copy source code
COPY /app .
#run application

CMD ["python", "index.py"]