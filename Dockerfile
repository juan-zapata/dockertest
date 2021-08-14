# PARTIR DE UNA IMAGEN
FROM node:10

#ESPACIO DE TRABAJO
WORKDIR /dockertest

#AÑADIR PACKAGE
ADD package.json package-lock.json  /dockertest/

# INSTALAR DEPENDENCIAS
RUN npm install

#COPIAR EL CODIGO
ADD . /dockertest/

#EXPOSE
EXPOSE 5000
#CORRER EL CONTENEDOR
CMD ['node', 'app.js']