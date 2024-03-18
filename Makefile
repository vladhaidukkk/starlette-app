lock:
	@pip-compile --upgrade --output-file requirements.txt
	@pip-compile --extra dev --upgrade --output-file requirements-dev.txt

sync:
	@pip-sync requirements-dev.txt
