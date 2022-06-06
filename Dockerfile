FROM python:3.9.6

#Definimos la carpeta /APP
WORKDIR /app

#Copiamos los archivos
#Desde nuestro punto de directorio hacia nuestro workdir
COPY . . 

#Necesitamos tener instalados flask, python y pip3


RUN apt -y update && apt -y install python3-pip && apt -y install nmap && pip3 install -r /app/requirements.txt

#Mostramos que estamos binndeando el 5000
EXPOSE 5000 


CMD ["python" , "app.py" ]
