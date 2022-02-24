#!/bin/bash

# -print0   separate filenames with a null character
# -0        counterpart for reading -print0 outputs

find . -name '*.html' -print0 | xargs -0 zip q4_htmls.zip
