@echo off
REM Stop de Docker container
docker stop demo-site

REM Verwijder de Docker container
docker rm demo-site
