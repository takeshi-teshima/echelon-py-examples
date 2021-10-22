.PHONY: docs

docs:
	sphinx-apidoc -e -f -o ./docs/src .
	rm -r docs/src/notebooks; mkdir docs/src/notebooks; cp ./*.ipynb docs/src/notebooks/
	sphinx-build ./docs/ ./docs/_build/html
	rsync -av ./docs/_build/html/ ./gh_docs
	cd gh_docs; xdg-open index.html
