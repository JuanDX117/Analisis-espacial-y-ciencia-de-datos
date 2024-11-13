# Usa la imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Expone el puerto donde la aplicación escuchará
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
