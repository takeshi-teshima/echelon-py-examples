.PHONY: docs

docs:
	sphinx-apidoc -e -f -o ./docs_src/src .
	rm -r docs_src/src/notebooks; mkdir docs_src/src/notebooks; cp ./*.ipynb docs_src/src/notebooks/
	sphinx-build ./docs_src/ ./docs
	touch docs/.nojekyll
	cd ./docs; xdg-open index.html
