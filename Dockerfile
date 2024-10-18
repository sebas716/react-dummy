# Fase 1: Utiliza una imagen de Node.js como base
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código fuente de la aplicación al contenedor
COPY . .

# Expone el puerto 3000 para acceder a la aplicación
EXPOSE 3000

# Ejecuta la aplicación en modo desarrollo
CMD ["npm", "start"]
