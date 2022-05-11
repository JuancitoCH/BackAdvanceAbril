FROM node

ENV NODE_ENV="docker"

WORKDIR /app

# vee si las dependencias cambian
# tiene que ver con la cache
# primero vemos si cambian las deendencias y en base a eso
#  docker determina si debe o no instalar nuevas dep
# es como un historial si ve que hay cambios modificamos los cambios nada mas y no hacemos todo de nuevo al crear una nueva imagen
COPY package*.json .
#  copia <directorio actual> < . directorio actual de la imagen>

RUN npm install

COPY /src /src

# puerto a exponer para conectarnos
EXPOSE 4000

# CMD ["npm","run","dev"]
# docker run -it --init -p 5000:4000 --rm  --name app_mejorada  app/0.1
