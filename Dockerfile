FROM ubuntu:22.04

COPY . /app
WORKDIR /app
RUN apt update && apt install -y python3 pip libgl1 libglib2.0-0 && apt clean
RUN pip install -r requirements.txt && rm -rf ~/.cache

# CMD ["uvicorn", "yolov8:app" , "--reload", "--host", "0.0.0.0"]
CMD ["echo", "hello"]


