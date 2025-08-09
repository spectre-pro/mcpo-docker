## mcpo-docker

```
docker run -d \
  -p 8000:8000 \
  -v path/for/your/setting.json:/setting.json \
  --name mcpo \
  --restart unless-stopped \
  ghcr.io/spectre-pro/mcpo-docker
```

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