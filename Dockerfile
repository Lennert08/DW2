# Gebruik een basisbeeld van Nginx
FROM nginx:alpine

# Kopieer de inhoud van de html-directory naar de standaard Nginx directory
COPY html /usr/share/nginx/html

# Maak buildtime.txt aan met de huidige datum en tijd
RUN date > /usr/share/nginx/html/buildtime.txt

# Exposeer poort 81
EXPOSE 81

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
