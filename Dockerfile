# Dockerfile actualizado
FROM jupyter/pyspark-notebook:latest

# Definir el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el cuaderno de Jupyter en el contenedor
COPY training-model.ipynb .

# Abrir el puerto 8888 para acceder al Jupyter Notebook
EXPOSE 8888

# Comando para lanzar el Jupyter Notebook al iniciar el contenedor
CMD ["start-notebook.sh"]
