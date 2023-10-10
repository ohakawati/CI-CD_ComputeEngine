FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY main.py /app/main.py
ENTRYPOINT ["python"]
CMD ["/app/main.py"]