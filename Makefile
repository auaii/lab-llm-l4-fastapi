include .env

PY_VENV=venv
PYTHON = $(PY_VENV)/Scripts/python
PIP = $(PY_VENV)/Scripts/pip
PROJECT_DIR = $(shell pwd)

init:
	python -m venv $(PY_VENV)
	$(PIP) install -r requirements.txt

run:
	@call $(PROJECT_DIR)/.env && $(PY_VENV)/Scripts/uvicorn app:app --host 0.0.0.0 --port ${PORT} --reload
