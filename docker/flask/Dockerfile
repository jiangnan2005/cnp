FROM crpi-zyfejs59wqo10ivm.cn-shenzhen.personal.cr.aliyuncs.com/jiangnan5210/python:3.9-slim

WORKDIR /app

COPY app /app

RUN pip install flask redis

CMD ["python", "app.py"]
