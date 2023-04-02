FROM python:3.9-bullseye
WORKDIR /zno_results
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . /zno_results
CMD python3 create.py ; python3 main.py