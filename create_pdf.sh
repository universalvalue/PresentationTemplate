#export TEXINPUTS='$(pwd)':$TEXINPUTS
export TEXINPUTS="$(pwd)/tex_supps/theme":$TEXINPUTS
pdflatex *.tex
bibtex *.aux
pdflatex *.tex
pdflatex *.tex
find * -maxdepth 0 ! -name *.pdf ! -name *.tex ! -name *.sh -type f -delete 
