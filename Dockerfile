FROM python:3.10

RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg


WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "bot.py"]