FROM python:3.11.6

# Set working directory
WORKDIR /usr/src/app

COPY requirements.txt ./

COPY . .

RUN pip install --upgrade pip 

#RUN pip install --no-cache-dir -r requirements.txt 

RUN python -m pip install easyocr 

RUN python -m pip install matplotlib

EXPOSE 8080

ENTRYPOINT ["python", "server.py"]