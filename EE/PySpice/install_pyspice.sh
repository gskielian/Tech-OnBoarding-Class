#!/bin/sh

echo "Make sure to be using python3"

# Installs PyPsice and Dependencies
python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose Sphinx PySPice


mkdir -p examples/PySpice_examples/libraries
echo "place libraries in folders in the 'examples/PySpice_examples/libraries' directory"
