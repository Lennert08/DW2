@echo off
REM Bouw de Docker image
docker build -t demo-site:latest .

REM Stop eventuele bestaande containers
docker stop demo-site
docker rm demo-site

REM Start een nieuwe container op poort 81
docker run -d -p 81:80 --name demo-site demo-site:latest

REM Wacht even om zeker te zijn dat de container gestart is
timeout /t 5 /nobreak

REM Open de demo-site in de standaard webbrowser
start http://localhost:81
