.PHONY: docs

docs:
	sphinx-apidoc -e -f -o ./docs/src .
	rm -r docs/src/notebooks; mkdir docs/src/notebooks; cp ./*.ipynb docs/src/notebooks/
	sphinx-build ./docs/ ./docs/deploy/html
	cd docs/deploy/html; xdg-open index.html
