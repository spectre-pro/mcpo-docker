FROM python:3.11-slim
WORKDIR /
RUN pip install uv
RUN apt-get update && \
    apt-get install -y npm && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8000
CMD ["uvx", "mcpo", "--config", "/setting.json", "-p", "8000", "--hot-reload"]
