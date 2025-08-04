FROM python:3.11-slim
WORKDIR /
RUN pip install mcpo uv
EXPOSE 8000
CMD ["mcpo", "--config", "./setting.json", "-p", "8000", "--hot-reload"]
