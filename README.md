# 5TIERRAS - Premium CRM & GIS Portal 🌲🗺️

¡Bienvenido al ecosistema digital de **5TIERRAS**! Esta aplicación es un demo de alto nivel diseñado para la gestión de proyectos inmobiliarios rurales, integrando visualización geográfica avanzada (GIS) con un sistema de gestión de clientes (CRM) y administración financiera.

## ✨ Características Principales

- **Portal Maestro GIS**: Mapa interactivo sincronizado con polígonos de parcelas reales.
- **Módulo de Ventas Inteligente**: 
  - Carga dinámica de GeoJSON (compatible con acceso local `file://`).
  - Selección de lotes táctil y resaltado visual.
  - Captura de leads integrada.
- **Dashboard Administrativo**: Analítica de ventas, estados de inventario y proyecciones de flujo de caja mediante Chart.js.
- **Control Gerencial**: Gestión de márgenes, aprobaciones de reservas y cola de trabajo.
- **Diseño Ultra-Premium**: Estética de cristal (glassmorphism), modo oscuro nativo y animaciones fluidas.
- **100% Responsivo**: Optimizado para smartphones, tablets y escritorio.

## 🚀 Cómo Ejecutar el Proyecto

Este proyecto está diseñado para funcionar de inmediato, ya sea en un servidor web o abriendo los archivos directamente en el navegador.

1. **Vía Local**: Simplemente abre `index.html` en Chrome, Edge o Safari.
   - *Nota Técnica*: Hemos implementado un cargador de scripts dinámico para evitar errores de CORS al usar el protocolo `file://`.
2. **Vía Servidor (Opcional)**: Puedes usar extensiones como "Live Server" en VS Code para una experiencia de desarrollo continua.

## 🛠️ Tecnologías Utilizadas

- **Frontend Core**: HTML5 Semántico, CSS3 (Vanilla).
- **Cartografía**: [Leaflet.js](https://leafletjs.com/) + Mapas de Google Satelital.
- **Gráficos**: [Chart.js](https://www.chartjs.org/) para visualización de datos.
- **Iconografía**: FontAwesome 6.
- **Tipografía**: Google Fonts (Inter).

## 📁 Estructura del Repositorio

- `index.html`: Acceso principal al ecosistema.
- `ventas.html`: Visor de parcelas y captura de leads.
- `administracion.html`: Dashboard de métricas financieras.
- `manager.html`: Panel de control para toma de decisiones gerenciales.
- `clientes.html`: Catálogo comercial de proyectos.
- `index.css`: Sistema de diseño global y media queries.
- `/[Proyectos]`: Carpetas con la cartografía técnica de cada loteo.

---
© 2026 GeoConecta / 5TIERRAS. Todos los derechos reservados.
