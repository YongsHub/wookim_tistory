FROM python:latest
RUN mkdir myapp/
COPY app.py myapp/app.py
WORKDIR /myapp/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

