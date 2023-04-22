filename=project-doc

pdf:
	pdflatex ${filename}
	biber ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}

clean:
	rm -f ${filename}.{aux,bbl,bcf,blg,equ,lof,log,lol,lot,out,pdf,run.xml,toc}
