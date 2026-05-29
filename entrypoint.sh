#!/bin/sh
set -e

if [ -z "$WALLET" ]; then
  echo "ERROR: переменная WALLET не задана. Укажи свой адрес prl1... в Environment Variables на Salad." >&2
  exit 1
fi

echo "Запускаю pearl-miner -> pool $HOST, wallet $WALLET"
exec /usr/local/bin/pearl-miner --host "$HOST" --user "$WALLET"
