# Docker-команда FROM указывает базовый образ контейнера
FROM python:3.10

# Установим переменную окружения
ENV APP_HOME /app

# Установим рабочую директорию внутри контейнера
WORKDIR $APP_HOME

# Скопируем остальные файлы в рабочую директорию контейнера
COPY . .

# Установим зависимости внутри контейнера
RUN pip install -r requirements.txt

# Обозначим порт где работает приложение внутри контейнера
EXPOSE 5000

# Запустим наше приложение внутри контейнера
ENTRYPOINT ["python", "app.py"]

