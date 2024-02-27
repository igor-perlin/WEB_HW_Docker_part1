FROM nginx:latest

# Копируем свою страницу приветствия в образ
COPY ./html/index.html /usr/share/nginx/html/index.html

# Порт, на котором будет работать сервер
EXPOSE 80

# Запускаем Nginx и поддержание его в работающем состоянии
CMD ["nginx", "-g", "daemon off;"]
