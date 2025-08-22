#!/bin/sh
set -e
API_KEY_ARG=""
if [ -n "${API_KEY}" ]; then
  echo "偵測到 API_KEY。將以安全模式啟動，並注入 API 金鑰。"
  API_KEY_ARG="--api-key ${API_KEY}"
else
  echo "未偵測到 API_KEY。將以普通模式啟動，不注入 API 金鑰。"
fi
echo "最終執行命令: $@ $API_KEY_ARG"
exec "$@" $API_KEY_ARG
