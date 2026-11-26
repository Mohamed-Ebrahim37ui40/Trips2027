#!/bin/bash
# تشغيل خادم محلي بسيط لتجربة التثبيت والعمل بدون إنترنت
cd "$(dirname "$0")"
PORT=${1:-8080}
echo "افتح الرابط: http://localhost:$PORT"
echo "للإيقاف: Ctrl+C"
if command -v python3 &>/dev/null; then
  python3 -m http.server "$PORT"
elif command -v python &>/dev/null; then
  python -m SimpleHTTPServer "$PORT"
else
  echo "ثبّت Python أو افتح index.html مباشرة (التثبيت لن يعمل من file://)"
fi
