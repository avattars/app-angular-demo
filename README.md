# Proyecto Angular para demo.

Este proyecto se ha generado a traves del comando 'ng new' para crear proyectos Angular estandar.

Luego, a este proyecto se adicionan los siguientes ficheros:

- Dockerfile
- /nginx/ngnix.conf


Además, en el fichero 'package.json' se le agrega el siguiente script:

"prod": "ng build --prod",



# Comandos ANGULAR:


cd app-angular-demo

npm install

npm run build 

ng serve -o


# Desplegar APP en Docker Desktop Local

docker build -t app-angular-demo .

docker run -p 8888:80 app-angular-demo



# Probar en una navegador despliegue de APP.

localhost:8888



