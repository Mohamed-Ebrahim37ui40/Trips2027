@echo off
cd /d "%~dp0"
echo افتح الرابط: http://localhost:8080
echo للإيقاف: Ctrl+C
python -m http.server 8080 2>nul || py -m http.server 8080 2>nul || echo ثبّت Python أو افتح index.html مباشرة
pause
