#!/usr/bin/env bash
# Script de sincronización y despliegue para silsaki-web
set -e

PROJECT_ID="silsaki-web"
echo "=========================================="
echo "🚀 Silsaki Web - Sincronización y Despliegue"
echo "=========================================="

# 1. Verificación de archivos estáticos
echo "🔍 [1/3] Verificando archivos públicos..."
if [ -f "public/index.html" ] && [ -f "public/styles.css" ] && [ -f "public/script.js" ]; then
  echo "✅ Archivos web principales presentes."
else
  echo "❌ Error: faltan archivos en public/."
  exit 1
fi

# 2. Despliegue en Firebase Hosting (si el proyecto existe y está logueado)
echo "🔥 [2/3] Intentando desplegar en Firebase Hosting ($PROJECT_ID)..."
if npx -y firebase-tools deploy --only hosting --project "$PROJECT_ID" 2>/dev/null; then
  echo "✅ Despliegue en Firebase completado exitosamente."
else
  echo "ℹ️ Nota: Despliegue en Firebase omitido o proyecto aún no inicializado en la consola de Firebase."
fi

# 3. Sincronización con GitHub
echo "🐙 [3/3] Guardando cambios y subiendo a GitHub (git@github.com:AndresAlberdi/silsaki-web.git)..."
git add .
if git diff-index --quiet HEAD -- 2>/dev/null; then
  echo "No hay cambios pendientes por commitear."
else
  git commit -m "chore: sincronización y mejoras de silsaki-web" || true
fi

git push origin main || echo "⚠️ Advertencia: no se pudo hacer push a GitHub."

echo "=========================================="
echo "✅ Pipeline completado."
echo "=========================================="
