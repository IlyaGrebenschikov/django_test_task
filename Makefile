DC=docker compose
DC_DIR=pushd docker_compose

.PHONY: build
build-app:
	$(DC_DIR) && $(DC) -f app.yaml build

.PHONY: up
up-app:
	$(DC_DIR) && $(DC) -f app.yaml up

secret-key:
	python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'
