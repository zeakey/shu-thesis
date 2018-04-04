#!/bin/bash
set -e
rm -rf .git
git init
git add *.sh
git add cover.docx
git add cover.pdf -f
git add .gitignore
git add figures/
git add *.bib
git add *.tex
git add README.md
git commit -m 'First commit'
git remote add origin git@github.com:zeakey/shu-thesis
git push -u origin master -f
echo "Done!"
