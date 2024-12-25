# Используем базовый образ Jupyter с поддержкой Spark
FROM jupyter/all-spark-notebook:latest

# Устанавливаем необходимые зависимости
RUN pip install --upgrade pip \
    && pip install pyspark psycopg2-binary

# Указываем рабочую директорию
WORKDIR /home/jovyan/work

# Открываем порт для Jupyter Notebook
EXPOSE 8888

# Запускаем Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
