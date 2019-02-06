# alpine versao bem simples e leve
FROM node:alpine

WORKDIR /opt/node-app/

COPY package*.json ./
RUN npm install


COPY . .

# porta exposta
EXPOSE 3000

# comando para iniciar a app, etc
CMD ["npm", "start"]