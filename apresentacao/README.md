# Apresentações

Neste diretório estão os códigos das apresentações do curso de Introdução do LaTeX. As apresentações estão separadas por partes, de forma que será necessário compilar as partes separadas.

## Compilação do material

Clone ou baixe este repositório em uma pasta no seu computador. Para a compilação, você pode utilizar a linha de comando ou algum editor de sua preferência. Para compilar é necessário, antes, instalar o pacote Pygments no seu computador. Em computador com o Linux/OS X, basta fazer:

    sudo easy_install Pygments

ou

    sudo apt-get install python-pygments

Após a instalação do Pygmenyts, utilize a seguinte sequência de comandos para compilar o documento:

    xelatex -interaction=nonstopmode -shell-escape apresentacao.tex
    bibtex publicacao
    xelatex -interaction=nonstopmode apresentacao.tex
    xelatex -interaction=nonstopmode apresentacao.tex

Observe que é necessário executar os comandos nesta ordem, com a repetição indicada. É apenas no último comando em que as referências bibliográficas serão adicionadas ao documento. O arquivo final com a parte compilada da apresentação é o "apresentacao.pdf".

Carlos Frederico Bastarz (carlos.bastarz@inpe.br)
