#!/bin/bash
# Bouw de Docker image
docker build -t demo-site:latest .

# Stop eventuele bestaande containers
docker stop demo-site
docker rm demo-site

# Start een nieuwe container op poort 81
docker run -d -p 81:80 --name demo-site demo-site:latest

# Wacht even om zeker te zijn dat de container gestart is
sleep 5

# Open de demo-site in de standaard webbrowser (commented out since it might not work on all systems)
# xdg-open http://localhost:81
