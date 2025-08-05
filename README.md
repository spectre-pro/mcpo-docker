## mcpo-docker

```
docker run -d \
  -p 8000:8000 \
  -v path/for/your/setting.json:/setting.json \
  --name mcpo \
  --restart unless-stopped \
  ghcr.io/spectre-pro/mcpo-docker
```
