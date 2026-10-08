# Silsaki Web - Silvana Sasaki

Sitio web y portafolio profesional ejecutivo de **Silvana Sasaki** (Ingeniera Comercial, Consultoría de Negocios, Fintech y Expansión Regional).

## 🚀 Características Implementadas

1. **Bilingüe (Español / Inglés)**:
   - Selector dinámico de idioma (`ES` / `EN`) en la barra de navegación superior.
   - Traducción completa de todas las secciones: Perfil, Experiencia Laboral, Formación Académica, Áreas de Conocimiento, Herramientas Tecnológicas, Servicios de Consultoría y Formulario de Contacto.
   - Persistencia de la selección de idioma en `localStorage` (`silsaki_lang`).

2. **Modalidades Día / Noche (Modo Noche por defecto)**:
   - Configuración ejecutiva oscura (Noche) como modo inicial predeterminado.
   - Botón toggle intuitivo de tema (con iconos de Sol y Luna) en la barra de navegación para alternar a Modo Día (Light) y Modo Noche (Dark).
   - Paleta de colores ajustada para máxima legibilidad, elegancia y contraste en ambas modalidades.
   - Persistencia de preferencia de tema en `localStorage` (`silsaki_theme`).

3. **Envío Gratuito de Mensajes a `silsaki@gmail.com`**:
   - Integración directa con **FormSubmit** (`https://formsubmit.co/ajax/silsaki@gmail.com`), herramienta 100% gratuita para sitios estáticos sin necesidad de servidores de correo propios.
   - Envío asíncrono vía AJAX (`fetch`) con feedback visual de envío y confirmación inmediata sin recarga de página.
   - Fallback de contingencia automático con enlace prellenado a cliente de correo (`mailto:silsaki@gmail.com`) y botón de WhatsApp directo.

4. **Control de Versiones y Repositorio**:
   - Repositorio Git vinculado a `git@github.com:AndresAlberdi/silsaki-web.git` en la rama `main`.

## 📁 Estructura del Proyecto

```text
silsaki/
├── public/
│   ├── assets/
│   │   └── images/
│   │       ├── silvana_profile.jpg
│   │       ├── skill_ai.jpg
│   │       ├── skill_bi.jpg
│   │       ├── skill_google.jpg
│   │       ├── skill_m365.jpg
│   │       └── skill_sap.jpg
│   ├── index.html
│   ├── styles.css
│   └── script.js
├── .firebaserc
├── .gitignore
├── firebase.json
├── deploy.sh
└── README.md
```

## 🛠️ Despliegue en Firebase Hosting

Para publicar las actualizaciones en Firebase Hosting:
```bash
./deploy.sh
```
O directamente con Firebase CLI:
```bash
npx -y firebase-tools deploy --only hosting
```
