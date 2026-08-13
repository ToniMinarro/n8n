# n8n local bootstrap

Bootstrap ligero para levantar un entorno **n8n local y reproducible** con el mínimo de configuración posible.

Este repositorio se mantiene deliberadamente como herramienta de desarrollo: no es un producto de Minarrolabs ni un experimento pendiente de validación. Su objetivo es disponer de una base simple y documentada para probar automatizaciones, integraciones y flujos n8n en local sin reconstruir el entorno desde cero.

## Arranque

```bash
make up
```

Después abre:

```text
http://localhost:5678/
```

y completa la configuración inicial de n8n en el navegador.

## Alcance

- bootstrap local mínimo;
- entorno reproducible para pruebas y desarrollo;
- punto de partida para automatizaciones temporales o integraciones;
- documentación suficiente para arrancarlo rápidamente.

No debe convertirse en una plataforma propia, producto comercial ni repositorio de lógica de negocio de otros proyectos. Los workflows o configuraciones que sean parte estable de un producto deben vivir en el repositorio propietario de ese producto.
