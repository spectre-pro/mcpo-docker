FROM python:3.11-slim
WORKDIR /
RUN pip install uv
RUN apt-get update && \
    apt-get install -y npm && \
    rm -rf /var/lib/apt/lists/*
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
EXPOSE 8000
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["uvx", "mcpo", "--config", "/setting.json", "-p", "8000", "--hot-reload"]
