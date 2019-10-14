# CursoIntroLaTeX

Bem vindo ao "Curso de Introdução ao LaTeX".

Neste diretório estão disponíveis a apostila e as apresentações do curso. As atualizações deste material é feita diretamente neste repositório.

Como você deve utilizar estes arquivos:

- A apostila é o material de apoio do curso. Ela contém informações, exemplos e alguns exercícios que serão feitos durante o curso. Tenha ela sempre em mãos para poder seguir com o curso.

Recomenda-se a instalação do compilador mais recente do LaTeX em seu computador.

## Compilação do material

Clone ou baixe este repositório em uma pasta no seu computador. Para a compilação, você pode utilizar a linha de comando ou algum editor de sua preferência. Para compilar é necessário, antes, instalar o pacote Pygments no seu computador. Em computador com o Linux/OS X, basta fazer:

    sudo easy_install Pygments
ou
    sudo apt-get install python-pygments

Após a instalação do Pygmenyts, utilize a seguinte sequência de comandos para compilar o documento:

    xelatex -interaction=nonstopmode -shell-escape publicacao.tex
    bibtex publicacao
    xelatex -interaction=nonstopmode publicacao.tex
    xelatex -interaction=nonstopmode publicacao.tex

Observe que é necessário executar os comandos nesta ordem, com a repetição indicada. É apenas no último comando em que as referências bibliográficas serão adicionadas ao documento. O arquivo final com a apostila é o "publicacao.pdf".

Carlos Frederico Bastarz (carlos.bastarz@inpe.br)
