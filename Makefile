.PHONY : test sdist upload clean dist ci

test :
	pytest

ci :
	gitlab-runner exec docker enerx

sdist :
	python setup.py sdist

clean :
	rm dist/*

upload :
	twine upload dist/*

dist : test sdist upload clean
