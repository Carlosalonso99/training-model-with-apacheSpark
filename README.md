
# Proyecto de Machine Learning para Predicción de Ventas

Este proyecto utiliza PySpark para entrenar un modelo de Machine Learning que predice las ventas totales a partir de un conjunto de datos de ventas de 2019. El cuaderno de Jupyter se ejecuta en un contenedor Docker que incluye todas las dependencias necesarias.

## Requisitos previos

Asegúrate de tener lo siguiente instalado en tu máquina antes de comenzar:

- **Docker**: Necesitarás Docker para ejecutar el contenedor con Jupyter Notebook y PySpark. Puedes descargar Docker desde [aquí](https://www.docker.com/products/docker-desktop).

## Archivos incluidos

- **Dockerfile**: Define la imagen Docker que incluye PySpark y Jupyter Notebook.
- **training-model.ipynb**: Cuaderno de Jupyter que contiene el código para entrenar y evaluar el modelo de Machine Learning.
- **data/2019.csv** y **data/2020.csv**: Archivos CSV que contienen los datos de ventas de 2019 y 2020 respectivamente.

## Instrucciones de Configuración y Ejecución

Sigue los pasos a continuación para ejecutar el proyecto en tu máquina local:

### 1. Clonar el repositorio

Clona este repositorio en tu máquina local:

```bash
 git clone https://github.com/Carlosalonso99/training-model-with-apacheSpark.git
 cd training-model-with-apacheSpark
```

### 2. Construir la imagen Docker

Construye la imagen Docker que contiene Jupyter Notebook y PySpark:

```bash
docker build -t jupyter-pyspark .
```

### 3. Ejecutar el contenedor Docker

Ejecuta el contenedor Docker con el siguiente comando. Esto montará tu directorio local en el contenedor, lo que permitirá al cuaderno acceder a los archivos CSV:

```bash
docker run -p 8888:8888 -v .:/home/jovyan/work jupyter-pyspark
```

- **-p 8888:8888**: Exponemos el puerto 8888 para acceder al Jupyter Notebook desde el navegador.
- **-v .:/home/jovyan/work**: Montamos el directorio local en el contenedor.

### 4. Acceder al Jupyter Notebook

Una vez que el contenedor esté en funcionamiento, en el log de la consola aparecera algo como esto

```
 http://127.0.0.1:8888/
```

Haz clic y accederas a la app

Podrás encontrar el token de acceso en la terminal donde ejecutaste el comando Docker.

