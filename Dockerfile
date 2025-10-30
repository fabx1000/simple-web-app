# Usa a imagem oficial do Nginx como base
FROM nginx:alpine

# Remove o conteúdo HTML padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos da sua aplicação para a pasta de serviço do Nginx
COPY . /usr/share/nginx/html/

# A porta padrão do Nginx é 80
EXPOSE 80

# O Nginx inicia automaticamente
CMD ["nginx", "-g", "daemon off;"]