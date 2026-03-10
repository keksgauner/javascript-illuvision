FROM nginx:alpine

# Copy folder to the correct location
COPY illuvision/examples /usr/share/nginx/html/examples
COPY illuvision/src /usr/share/nginx/html/src

# Copy nginx file
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]