#!/bin/sh
#  execpub.sh - gera o documento de saida via LaTeX versao 1.11
#
#  uso: ./execpub.sh publicacao _opcao_
#
#__INFO__MARK_BEGIN__
################################################################################
#
#   Nenhuma parte deste script pode ser copiada ou utilizada sem a prévia 
#   aceitação do autor.
#   
#   Data da última alteração: 29/07/2005.
#
#   Alan Wilter SID-INPE/MCT - alan@sid.inpe.br
#
################################################################################
#__INFO__MARK__END__
args=2
file=$1
option=$2
if [ $# -ne "$args" ]; then
  cat ./LEIAME
  exit
fi

if [ ! -s ${file}.tex ]; then 
  echo "Arquivo $file inexistente ou com extensão .tex"
  echo "Omita a extensão .tex de $file se for o caso"
  exit
fi

BASENAME=$file
PROGRAM_BIB=bibtex
PROGRAM_PDFLATEX=pdflatex
PROGRAM_LATEX=latex
PROGRAM_HTLATEX=htlatex
PROGRAM_MAKEINDEX=makeindex

function mk_pdf1 {
 ${PROGRAM_PDFLATEX} ${BASENAME}.tex
}

function mk_dvi1 {
 ${PROGRAM_LATEX} ${BASENAME}.tex
}

function mk_pdf {
 mk_pdf1
 ${PROGRAM_BIB} ${BASENAME}
 ${PROGRAM_MAKEINDEX} ${BASENAME}
 mk_pdf1
 mk_pdf1
 mk_pdf1
}

function mk_dvi {
 mk_dvi1
 ${PROGRAM_BIB} ${BASENAME}
 ${PROGRAM_MAKEINDEX} ${BASENAME}
 mk_dvi1
 mk_dvi1
 mk_dvi1
}

function mk_clean {
	rm -f *.aux *.log *.toc *.lot *.lof *.out *.blg *.bbl *.idx *.ilg *.ind *.brf
	rm -f `find . -name "*.log"`
	rm -f `find . -name "*.aux"`
	rm -f *.tmp *.css *.lg *.idv *.4tc *.xref *.4ct *.png *.html
}

case $option in
     all)
        mk_clean
	mk_pdf
     ;;
     pdf)
        mk_pdf
     ;;
     dvi)
        mk_dvi
     ;;
     ps)
        mk_dvi
	dvips ${BASENAME}.dvi -o ${BASENAME}.ps
     ;;
     html)
	${PROGRAM_HTLATEX} ${BASENAME}.tex
	${PROGRAM_BIB} ${BASENAME}
	${PROGRAM_MAKEINDEX} ${BASENAME}
	${PROGRAM_HTLATEX} ${BASENAME}.tex
     ;;
     clean)
        mk_clean
     ;;
     pdf1)
         mk_pdf1
     ;;
     dvi1)
         mk_dvi1
     ;;
     help)
     cat ./LEIAME
     ;;
esac
exit

