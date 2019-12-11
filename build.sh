#/bin/bash
set -e
OUTPUT="output"
if [ ! -e output ]; then
  mkdir $OUTPUT
fi

UNAME=$(uname -s)
if [ $UNAME == "Linux" ] || [ $UNAME == "Darwin" ]; then
  LATEX="xelatex"
else
  LATEX="pdflatex"
fi
echo "Building with "$LATEX" on "$UNAME
"$LATEX" -output-directory "$OUTPUT" shu-thesis.tex
bibtex shu-thesis.aux
"$LATEX" -output-directory "$OUTPUT" shu-thesis.tex
"$LATEX" -output-directory "$OUTPUT" shu-thesis.tex

