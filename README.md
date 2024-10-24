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
 git clone <URL_DEL_REPOSITORIO>
 cd <NOMBRE_DEL_REPOSITORIO>
```

### 2. Construir la imagen Docker

Construye la imagen Docker que contiene Jupyter Notebook y PySpark:

```bash
docker build -t jupyter-pyspark .
```



### 4. Acceder al Jupyter Notebook

Una vez que el contenedor esté en funcionamiento, abre tu navegador y copia la siguiente URL para acceder a Jupyter Notebook:

```
http://127.0.0.1:8888
```

Podrás encontrar el token de acceso en la terminal donde ejecutaste el comando Docker.
