# Etapa base
FROM node:18-alpine
# Crear directorio de trabajo
WORKDIR /app
# Copiar dependencias y proyecto
COPY package*.json ./
RUN npm install --silent
COPY . .
# Exponer puerto
EXPOSE 3000
# Comando de inicio
CMD ["npm", "start"]
