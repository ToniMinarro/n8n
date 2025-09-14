# Makefile para gestionar n8n con docker-compose
# Uso: make <objetivo>
# Ej: make up

PROJECT_NAME=n8n
DOCKER_COMPOSE=docker compose
SERVICE=n8n

## Levantar en segundo plano
up:
	$(DOCKER_COMPOSE) up -d

## Levantar en primer plano (modo debug/logs en consola)
up-logs:
	$(DOCKER_COMPOSE) up

## Reiniciar servicio
restart:
	$(DOCKER_COMPOSE) restart $(SERVICE)

## Parar servicio
down:
	$(DOCKER_COMPOSE) down

## Parar y borrar volúmenes (¡destruye datos persistentes!)
down-clean:
	$(DOCKER_COMPOSE) down -v

## Ver logs en tiempo real
logs:
	$(DOCKER_COMPOSE) logs -f $(SERVICE)

## Entrar en el contenedor (bash/sh)
shell:
	$(DOCKER_COMPOSE) exec $(SERVICE) bash || $(DOCKER_COMPOSE) exec $(SERVICE) sh

## Actualizar a última versión de la imagen
update:
	$(DOCKER_COMPOSE) pull $(SERVICE)
	$(DOCKER_COMPOSE) up -d

## Mostrar estado de contenedores
ps:
	$(DOCKER_COMPOSE) ps

## Ver variables de entorno cargadas en n8n
env:
	$(DOCKER_COMPOSE) exec $(SERVICE) env

## Rec

