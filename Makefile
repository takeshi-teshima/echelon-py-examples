.PHONY: docs

docs:
	sphinx-apidoc -e -f -o ./docs/src .
	rm -r docs/src/notebooks; mkdir docs/src/notebooks; cp ./*.ipynb docs/src/notebooks/
	sphinx-build ./docs/ ./docs/_build/html
	cd docs/_build/html; xdg-open index.html
