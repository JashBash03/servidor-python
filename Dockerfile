# Usamos la imagen oficial de Python como base.
FROM python:3.11-slim

# Establecemos el directorio de trabajo dentro del contenedor.
WORKDIR /app

# Copiamos todos los archivos del proyecto a la imagen del contenedor.
COPY . /app

# Exponemos el puerto que va a utilizar el servidor (por defecto el 8000).
EXPOSE 8000

# Comando para ejecutar el servidor HTTP de Python.
CMD ["python", "-m", "http.server", "8000"]
