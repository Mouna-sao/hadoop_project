
.PHONY: build up down logs tests web db redis swagger flower


build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f


load:
	docker compose run --rm --entrypoint python app -m src.load_data

hello-world:
	docker compose run --rm loader python -m src.loader.hello_world

jupyter:
	open http://localhost:8888/
