#/bin/bash
set -e
if [ ! -e tmp ]; then
  mkdir tmp
fi
if [[ [$(uname)=="Linux"] || [$(uname)=="Darwin"] ]]; then
  LATEX="xelatex"
else
  LATEX="pdflatex"
fi
echo "Building with "$LATEX
"$LATEX" -output-directory tmp shu-thesis.tex
bibtex tmp/shu-thesis.aux
"$LATEX" -output-directory tmp shu-thesis.tex
"$LATEX" -output-directory tmp shu-thesis.tex
