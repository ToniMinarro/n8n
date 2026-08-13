# n8n local bootstrap

Bootstrap ligero para levantar un entorno **n8n local y reproducible** con el mínimo de configuración posible.

Este repositorio se mantiene deliberadamente como herramienta de desarrollo: no es un producto de Minarrolabs ni un experimento pendiente de validación. Su objetivo es disponer de una base simple y documentada para probar automatizaciones, integraciones y flujos n8n en local sin reconstruir el entorno desde cero.

## Configuración local

Antes del primer arranque crea un `.env` local y define una clave de cifrado **única para ese entorno**. `.env` está ignorado por Git y nunca debe contenerse en commits.

No reutilices una clave publicada, compartida o de otro entorno. Si este bootstrap llega a almacenar credenciales reales, conserva la clave únicamente en el gestor de secretos o almacenamiento local apropiado.

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

## Seguridad

- no versionar `.env`, claves de cifrado ni credenciales de integraciones;
- no persistir workflows con secretos embebidos en Git;
- si una clave o credencial se publica alguna vez, tratarla como comprometida y rotarla antes de reutilizar el entorno.
