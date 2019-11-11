#!/bin/bash

# Compiles the all files and stores the results in ``build``.
# Takes the target format (``html`` or ``epub``) as the first and a list of language codes as following parameters.
# The results are stored in the folder ``build``. Run ``sphinx_build.sh html en`` to generate the English HTML
# documents, for example.

set -e

target=$1

# Remove target parameter
shift 1

# Run for all given language codes ==============
for LANGNAME in "$@" ; do
  mkdir -pv build/${target}/${LANGNAME}
  sphinx-build -E -q -a -N -n -c src -b ${target} src/${LANGNAME} build/${target}/${LANGNAME} -j 4 -Dlanguage=${LANGNAME}
done
