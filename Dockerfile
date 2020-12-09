FROM python:latest
RUN mkdir myapp/
ADD . myapp/
WORKDIR /myapp/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

