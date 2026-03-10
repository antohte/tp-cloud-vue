# Étape 1: Build de l'application
FROM node:20-slim as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm ci --verbose
RUN ls -la node_modules/.bin/vite || echo "VITE NOT FOUND!"
RUN which vite || npm exec vite -- --version
COPY . .
RUN npm run build

# Étape 2: Serveur de production
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
