FROM python:latest
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org Flask
ENV NAME Mark
CMD ["python","app.py"]
