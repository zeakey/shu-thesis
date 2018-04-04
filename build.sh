# build tex source
echo "Start to build..."
set -e
pdflatex shu-thesis.tex
bibtex shu-thesis.aux
pdflatex shu-thesis.tex
pdflatex shu-thesis.tex
echo "Done!"

