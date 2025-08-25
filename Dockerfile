FROM zabbix/zabbix-agent:ubuntu-6.0-latest

# Переключаемся на root для установки пакетов
USER root

# Обновляем пакеты и устанавливаем Python3
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Возвращаемся к пользователю zabbix
USER 1997
