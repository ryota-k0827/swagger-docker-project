dc := docker compose

up:
	$(dc) up -d

down:
	$(dc) down

open/swagger-editor:
	open http://localhost:8001

open/swagger-ui:
	open http://localhost:8002

open/swagger-api:
	open http://localhost:8003

# generate/laravel:
# 	$(dc) run openapi-generator generate -i api/sample-api.yaml -g php-laravel -o api-skeleton/laravel

# generate/typescript:
# 	$(dc) run openapi-generator generate -i api/sample-api.yaml -g typescript-axios -o api-skeleton/typescript
