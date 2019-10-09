#!/bin/sh
#  livreto4.sh - gera livreto 4 folhas em uma A4
#
#  uso: ./livreto4.sh publicacao.pdf
#
#__INFO__MARK_BEGIN__
################################################################################
#
#   Nenhuma parte deste script pode ser copiada ou utilizada sem a prévia 
#   aceitação do autor.
#   
#   Data da última alteração: 31/05/2005.
#
#   Alan Wilter SID-INPE/MCT - alan@sid.inpe.br
#
################################################################################
#__INFO__MARK__END__
args=1
base=$1
if [ $# -ne "$args" ]; then
  cat << EOF
LIVRETO4
--------
Converte arquivo PDF em formato livreto
4 paginas por folha (A4, frente e verso)

Uso:
    ./livreto _arquivo_pdf_ 

Entrada _arquivo_pdf_:

    arquivo PDF

Saida _arquivo_pdf_4.pdf
    
--------------------------------------------------
alan@sid.inpe.br
EOF
  exit
fi
basen=`basename $base .pdf`
texexec --pdfarrange --paper=a5a4 --print=up --result=${basen}4 $base
rm -f texexec* mpgraph.mp
exit
