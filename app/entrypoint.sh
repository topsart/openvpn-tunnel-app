#!/bin/bash

echo "Чекаю підключення OpenVPN клієнта..."
sleep 10

# Замініть IP на адресу вашого сервера, з яким потрібно перевірити коннект
SERVER_IP="172.0.0.1"

echo "Перевірка підключення до сервера OpenVPN (${SERVER_IP})..."
if curl -s --connect-timeout 5 "http://${SERVER_IP}" > /dev/null; then
  echo "✅ Успішно підключено до сервера OpenVPN!"
else
  echo "❌ Не вдалося підключитися до сервера OpenVPN."
  exit 1
fi

# Виконання вашого додатку (замініть команду нижче)
echo "Запуск вашого додатку..."
tail -f /dev/null
