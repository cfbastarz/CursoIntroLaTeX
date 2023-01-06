# CursoIntroLaTeX

Bem vindo ao "Curso de Introdução ao LaTeX".

Neste diretório estão disponíveis a apostila e as apresentações do curso. As atualizações deste material são feitas diretamente neste repositório.

Como você deve utilizar estes arquivos:

- A apostila é o material de apoio do curso. Ela contém informações, exemplos e alguns exercícios que serão feitos durante o curso. Tenha ela sempre em mãos para poder seguir com o curso.

Recomenda-se a instalação do compilador mais recente do LaTeX em seu computador. Se você tem dúvidas como proceder nesta parte, tenha como referência a Seção 1.4.1 da apostila - "Escolhendo e instalando o compilador". O arquivo PDF da apostila pode ser encontrado no diretório "apostila".

## Baixando o material

Você pode baixar o material clicando no botão ["Clone or download"](https://github.com/cfbastarz/CursoIntroLaTeX/archive/master.zip), ou pode clonar este repositório utilizando o git:

    git clone git@github.com:cfbastarz/CursoIntroLaTeX.git
    
Veja como fazer no exemplo a seguir:

![Screencast git clone](https://github.com/cfbastarz/CursoIntroLaTeX/blob/master/cursolatex-80x25_50p-v3.gif)

## Compilação do material

Para a compilação, você pode utilizar a linha de comando ou algum editor de sua preferência. Para compilar é necessário, antes, instalar o pacote Pygments no seu computador. Em computador com o Linux/OS X, basta fazer:

    sudo easy_install Pygments

ou

    sudo apt-get install python-pygments

**Nota:** no Mac OS X, pode-se instalar o pacote `pygments` utilizando o gerenciador de pacotes `brew`: `brew install pygments`.

Após a instalação do Pygmenyts, utilize a seguinte sequência de comandos para compilar o documento:

    xelatex -interaction=nonstopmode -shell-escape publicacao.tex
    bibtex publicacao
    xelatex -interaction=nonstopmode publicacao.tex
    xelatex -interaction=nonstopmode publicacao.tex

Observe que é necessário executar os comandos nesta ordem, com a repetição indicada. É apenas no último comando em que as referências bibliográficas serão adicionadas ao documento. O arquivo final com a apostila é o "publicacao.pdf".

Carlos Frederico Bastarz (carlos.bastarz@inpe.br)
