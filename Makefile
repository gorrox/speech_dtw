all:
	python setup.py build_ext --inplace

init:
	python -m pip install --user -r requirements.txt

dist:
	python setup.py sdist

install:
	python setup.py sdist
	pip install dist/*.tar.gz

clean:
	rm -rf build
	rm -rf speech_dtw/*.c
	rm -rf speech_dtw/*.so
	rm -rf speech_dtw/*.pyc

test:
	nosetests -v
