# GERANDO A SAÍDA LATEX -> PDF (INPE)
-----------------------------------
Gera o documento de saída via PDFLaTeX
Para ser usado em ambiente UNIX/LINUX/CYGWIN

Há duas formas de se fazer isto:

1) Usando o comando 'make'
Uso:
    make _opção_

OBS: É necessário abrir o arquivo Makefile e configurá-lo, 
alterarando-se a variável BASENAME para seu documento principal

2) Usando o script 'execpub.sh'
Uso:
    ./execpub.sh _input_ _opção_

Entrada _input_: arquivo principal em LaTeX (mas sem extensao), p. ex.:
       publicacao[.tex] (ou equivalente)

Opções:

    help	Esta ajuda.

    pdf		Criação do documento PDF.

    pdf1	Executa apenas uma vez o PDFLATEX. 
	
    clean	Remove arquivos utilizados durante a criação 
		do documento PDF.

    all		Limpa e cria o documento PDF.
    
    ps	  	gera documento PS (PostScript)
    
    dvi		gera documento DVI
      
--------------------------------------------------
Bruno A.F. Roth (roth@lit.inpe.br) [10/04/2002] v1.0 
Bruno A.F. Roth (roth@lit.inpe.br) [05/04/2005] v1.1 +55(12)39456836
Mantido por Alan Wilter S .da Silva [29/07/2005] v1.3a +55(12)3945-6911
alan@sid.inpe.br
