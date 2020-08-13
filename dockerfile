From python:3.8

WORKDIR /usr/src/app

COPY /app ./

RUN pip install --upgrade pip

COPY . ./

RUN pip install --trusted-host pypi.python.org -r requirements.txt

VOLUME [ "/app" ]

EXPOSE 80

ENV NAME World

CMD ["python"]

