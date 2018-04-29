#/bin/bash
set -e
mkdir -p tmp
if [ "$(uname)" == "Linux" ] || [ "$(uname)" == "Darwin" ]; then
  LATEX="xelatex"
else
  LATEX="pdflatex"
fi
echo "Building with "$LATEX
"$LATEX" -interaction=nonstopmode -output-directory tmp shu-thesis.tex
bibtex tmp/shu-thesis.aux
"$LATEX" -interaction=nonstopmode -output-directory tmp shu-thesis.tex
"$LATEX" -interaction=nonstopmode -output-directory tmp shu-thesis.tex

