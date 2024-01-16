.PHONY: test lint format typecheck all

lint:
	poetry run flake8

format:
	poetry run black .
	poetry run isort .

typecheck:
	poetry run mypy .

all:lint format typecheck
