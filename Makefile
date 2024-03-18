lock:
	@pip-compile --upgrade --output-file requirements.txt
	@pip-compile --extra dev --upgrade --output-file requirements-dev.txt

sync:
	@pip-sync requirements-dev.txt

start:
	@uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
