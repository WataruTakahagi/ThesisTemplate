latex main.tex
for auxfile in chapter*.aux
do
  bibtex `basename $auxfile .aux`
done
latex main.tex
latex main.tex
dvipdfmx main.dvi
open main.pdf
