FROM python:3.11-slim
WORKDIR /
RUN pip install mcpo
RUN apt-get update && \
    apt-get install -y npm && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8000
CMD ["mcpo", "--config", "/setting.json", "-p", "8000", "--hot-reload"]
