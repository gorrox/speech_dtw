Dynamic Time Warping for Speech Processing
==========================================

Overview
--------
Tools (functions and scripts) for performing and evaluating speech processing
tasks using dynamic time warping (DTW).


Dependencies
------------
- [Cython](http://cython.org/)
- [python_speech_features](http://github.com/jameslyons/python_speech_features):
  Used in some of the examples.
- [joblib](https://pythonhosted.org/joblib/): Used to parallelize
  query-by-example search in `utils/qbe.py`.


Building and testing the code
-----------------------------
- Install the dependencies: `make init`
- Build the Cython components: `make`
- Run unit tests: `make test`
- Install the distributable package: `make install` (this will allow you to import `speect_dtw` in your projects)
- Rebuild the distributable package: `make dist`
- Clean the code: `make clean`


Examples
--------
Examples are given in the `examples/` directory. The script
`examples/rnd_example.py` illustrates standard DTW and compares a pure Python
implementation to the Cython implementation.

The IPython notebook [speech_dtw_qbe.ipynb](examples/speech_dtw_qbe.ipynb)
illustrates how to do (very basic) query-by-example (QbE) search using standard
DTW.
