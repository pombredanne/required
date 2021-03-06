.PHONY: test upload clean build

test:
	tox

build:
	python setup.py sdist bdist_wheel
	
upload: clean build
	python setup.py register -r pypi
	twine upload -r pypi dist/required-*

clean:
	rm -rf build dist
