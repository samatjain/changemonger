serve: venv
	. venv/bin/activate; python app.py
venv: venv/bin/activate
venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/bin/activate
clean:
	rm -rf venv
