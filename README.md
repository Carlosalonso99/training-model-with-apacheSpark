# Análisis de Datos en un Lago de Datos con Apache Spark

Este proyecto utiliza Apache Spark en Azure Synapse Analytics para analizar grandes volúmenes de datos almacenados en un lago de datos. Apache Spark es una potente herramienta de procesamiento distribuido de datos compatible con múltiples lenguajes de programación, incluidos Java, Scala, Python y SQL.

## Requisitos Previos

- **Suscripción de Azure**: Necesitarás una suscripción de Azure con permisos administrativos.
- **Acceso al Portal de Azure**: Podrás iniciar sesión en [https://portal.azure.com](https://portal.azure.com).

## Pasos para Realizar el Análisis de Datos en Azure Synapse Analytics

Sigue los pasos a continuación para aprovisionar un espacio de trabajo en Azure Synapse Analytics y analizar los datos en el lago de datos:

### 1. Aprovisionar un Espacio de Trabajo de Azure Synapse Analytics

1. Inicia sesión en el portal de Azure: [https://portal.azure.com](https://portal.azure.com).
2. Utiliza el botón **[>_]** a la derecha de la barra de búsqueda en la parte superior de la página para crear un nuevo **Cloud Shell**.
   - Selecciona el entorno **PowerShell** y crea almacenamiento si se te solicita.
   - Asegúrate de estar utilizando el entorno de PowerShell (puedes cambiarlo en el menú desplegable en la parte superior izquierda del panel).

### 2. Ejecutar el Script de Configuración

En el panel de **PowerShell**, ingresa los siguientes comandos para clonar el repositorio y ejecutar el script de configuración:

```powershell
rm -r dp203 -f
git clone https://github.com/MicrosoftLearning/Dp-203-azure-data-engineer dp203
cd dp203/Allfiles/labs/05
./setup.ps1
```

- Si se te solicita, elige la suscripción que deseas usar.
- Ingresa una contraseña adecuada cuando se te solicite para configurar el grupo de SQL de Azure Synapse.
- Espera a que se complete el script (esto puede tardar alrededor de 10 minutos).

### 3. Verificar el Espacio de Trabajo y los Datos en el Lago de Datos

1. En el portal de Azure, navega al grupo de recursos creado (`dp500-xxxxxxx`) y selecciona el espacio de trabajo de **Synapse**.
2. En la página **Descripción General** del espacio de trabajo, selecciona **Abrir Synapse Studio** para abrir **Synapse Studio** en una nueva pestaña del navegador.
3. En **Synapse Studio**, selecciona la página **Administrar** y verifica que se haya creado un grupo de **Apache Spark**.
4. Ve a la página **Datos** y verifica que el espacio de trabajo incluya un vínculo a la cuenta de almacenamiento **Azure Data Lake Storage Gen2**.
   - Expande la cuenta de almacenamiento y verifica que contenga un contenedor de archivos llamado **sales**.
   - Dentro de la carpeta **sales**, abre la carpeta **orders** y verifica que contenga archivos `.csv` con datos de ventas.

### 4. Utilizar Spark para Explorar los Datos

1. En la carpeta **orders**, selecciona uno de los archivos `.csv` y elige **Cargar en DataFrame**.
2. En el **notebook** que se abre, selecciona el grupo de **Spark** apropiado (creado en los pasos anteriores).
3. Ejecuta todas las celdas del notebook para cargar los datos en un **DataFrame** de Spark.

### 5. Usar el cuaderno para entrenar el modelo

## Notas

- El tiempo estimado para completar el laboratorio es de aproximadamente 45 minutos.
- Asegúrate de recordar la contraseña configurada para el grupo de SQL, ya que será necesaria para futuros pasos.

## Recursos Adicionales

- Documentación de Azure Synapse Analytics: [Apache Spark en Azure Synapse Analytics](https://learn.microsoft.com/es-es/azure/synapse-analytics/spark/apache-spark-overview)
- Documentación de Azure Cloud Shell: [Azure Cloud Shell](https://learn.microsoft.com/es-es/azure/cloud-shell/overview)
