## mcpo-docker

```
docker run -d \
  -p 8000:8000 \
  -v path/for/your/setting.json:/setting.json \
  --name mcpo \
  --restart unless-stopped \
  ghcr.io/spectre-pro/mcpo-docker
```
 you can use the ```-e API_KEY=the_api_key_you_want``` to input the key and the key can't have the space

you need to add the file ```setting.json``` input the mcp content like this and change ```path/for/your/setting.json``` to your path
```JSON
{
  "mcp": {
    "servers": {
      "github": {
        "command": "/path/to/github-mcp-server",
        "args": ["stdio"],
        "env": {
          "GITHUB_PERSONAL_ACCESS_TOKEN": "<YOUR_TOKEN>"
        }
      }
    }
  }
}
```

open-webui + mcpo ```docker-compose.yml```
```yml
services:
  open-webui:
    image: ghcr.io/open-webui/open-webui:main
    container_name: open-webui
    ports:
      - "3000:8080"
    volumes:
      - open-webui:/app/backend/data
    restart: unless-stopped
 
  mcpo:
    image: ghcr.io/spectre-pro/mcpo-docker
    container_name: mcpo
    ports:
      - "8000:8000"
    volumes:
      - path/for/your/setting.json:/setting.json
    restart: unless-stopped
 
volumes:
  open-webui:
```
