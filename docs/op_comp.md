# 6. Opções de Compilação

Neste apêndice são apresentadas algumas opções úteis para a compilação de documentos LaTeX. Na [Parte 1](../preparacao/#11-introducao), foi mostrado como um documento LaTeX simples pode ser compilado utilizando-se os seguintes comandos:

=== "Comando"

    ```Bash linenums="1"
    latex arquivo.tex 
    dvips arquivo.dvi
    ps2pdf arquivo.ps
    ```

Na sequência de comandos acima, até que o resultado final seja alcançado (o arquivo PDF), observe que há vários arquivos intermediários que são gerados durante a compilação. O comando `latex arquivo.tex` irá gerar os seguintes arquivos:

* `arquivo.aux`: contém as informações sobre a estrutura e as partes do documento (e.g., sumário, capítulos, seções etc);
* `arquivo.dvi`: é o arquivo que contém o documento formatado, pronta para inspeção no computador (ainda não é o arquivo final);
* `arquivo.log`: contém informações o compilador utilizado e a versão, o tipo de classe empregada, estilos e pacotes carregados.

O passo seguinte à execução do comando `latex`, é criar um arquivo que possa ser impresso. Esse arquivo pode ser um arquivo PS, EPS ou PDF, sendo o arquivo PDF o formato preferível. Para criar o arquivo no formato PS, utiliza-se o comando:

=== "Comando"

    ```Bash linenums="1"
    dvips arquivo.dvi 
    ```

Para criar o arquivo PDF, há duas formas: converter o arquivo DVI em PDF (sem a necessidade do arquivo PS), a partir do comando: 

=== "Comando"

    ```Bash linenums="1"
    dvipdf arquivo.dvi 
    ```

A outra forma, é converter o arquivo PS em PDF, utilizando o comando a seguir:

=== "Comando"

    ```Bash linenums="1"
    ps2pdf arquivo.ps 
    ```

Entretando, ao invés de utilizar a sequência de comandos acima, pode-se utilizar o comando `pdflatex` que automatiza as etapas intermediárias entre o documento LaTeX e o arquivo PDF final:

=== "Comando"

    ```Bash linenums="1"
    pdflatex arquivo.tex
    ```

Outros compiladores, como o XeLaTeX escrevem o arquivo PDF de forma direta, bastando, para isso, utilizar o seguinte comando:

=== "Comando"

    ```Bash linenums="1"
    xelatex arquivo.tex
    ```

Dependendo das necessidades do usuário ou da complexidade do documento escrito (como esta apostila), pode ser necessário utilizar algumas opções do compilador para que o documento seja criado. O comportamento padrão dos compiladores do LaTeX, é abortar o processo de compilação quando erros são encontrados. Por exemplo, quando um comando é digitado errado, como indicado a seguir:

=== "Comando"

    ```Bash linenums="1"
    latex arquivo.tex
    This is pdfTeX, Version 3.14159265-2.6-1.40.20 (TeX Live 2019) (preloaded format=latex)
    restricted \write18 enabled.
    entering extended mode
    (./arquivo.tex
    LaTeX2e <2019-10-01> patch level 3
    (/usr/local/texlive/2019/texmf-dist/tex/latex/base/article.cls
    Document Class: article 2019/10/25 v1.4k Standard LaTeX document class
    (/usr/local/texlive/2019/texmf-dist/tex/latex/base/size10.clo))
    (/usr/local/texlive/2019/texmf-dist/tex/latex/base/inputenc.sty)
    (/usr/local/texlive/2019/texmf-dist/tex/latex/lipsum/lipsum.sty
    (/usr/local/texlive/2019/texmf-dist/tex/latex/l3kernel/expl3.sty
    (/usr/local/texlive/2019/texmf-dist/tex/latex/l3kernel/expl3-code.tex
    ...
    (/usr/local/texlive/2019/texmf-dist/tex/latex/lipsum/lipsum.ltd.tex))
    No file arquivo.aux.
    ! Undefined control sequence.
    l.14 \maketitlee
    
    ?
    ```

Na saída do comando acima, observe que o compilador não entendeu a instrução `\maketitlee` e parou a compilação com a mensagem `! Undefined control sequence.`. Neste caso, o compilador aguarda algum tipo de instrução, o que é conveniente pois permite que o usuário possa identificar e corrigir os problemas. Neste caso, para sair do *prompt* de compilação do LaTeX, basta digitar a palavra *quit*. Veja a seguir:


```Bash linenums="1"
...
No file arquivo.aux.
! Undefined control sequence.
l.14 \maketitlee

? quit
OK, entering \batchmode
```

Quando algum pacote desatualizado, ou que causa algum tipo de conflito com outro pacote ocorre, ou quando comandos errados são utiizados (e o usuário não percebe), a opção `-interaction=nonstopmode` pode ser útil. Esta opção instrui o compilador em uso a continuar com a compilação do documento, mesmo que erros sejam encontrados. Ela deve ser utilizada da seguinte forma: 

=== "Comando"

    ```Bash linenums="1"
    latex -interaction=nonstopmode arquivo.tex
    This is pdfTeX, Version 3.14159265-2.6-1.40.20 (TeX Live 2019) (preloaded format=latex)
    restricted \write18 enabled.
    entering extended mode
    (./arquivo.tex
    LaTeX2e <2019-10-01> patch level 3
    (/usr/local/texlive/2019/texmf-dist/tex/latex/base/article.cls
    Document Class: article 2019/10/25 v1.4k Standard LaTeX document class
    (/usr/local/texlive/2019/texmf-dist/tex/latex/base/size10.clo))
    (/usr/local/texlive/2019/texmf-dist/tex/latex/base/inputenc.sty)
    (/usr/local/texlive/2019/texmf-dist/tex/latex/lipsum/lipsum.sty
    (/usr/local/texlive/2019/texmf-dist/tex/latex/l3kernel/expl3.sty
    (/usr/local/texlive/2019/texmf-dist/tex/latex/l3kernel/expl3-code.tex
    ...
    (/usr/local/texlive/2019/texmf-dist/tex/latex/lipsum/lipsum.ltd.tex))
    (./arquivo.aux)
    ! Undefined control sequence.
    l.14 \maketitlee
    
    [1] (./arquivo.aux) )
    (see the transcript file for additional information)
    Output written on arquivo.dvi (1 page, 2232 bytes).
    Transcript written on arquivo.log.
    ```

Note que mesmo com a instrução `\maketitlee` estando incorreta (o correto é `maketitle`), o compilador continuou com a compilação até o fim. Neste caso, o resultado é um documento sem o título, nome do autor e data.

Alguns pacotes, requerem opções especiais para que possam ser utilizados. Um exemplo é o pacote `tcolorbox` quando é utilizado para produzir listagem de código (como a maioria dos exemplos mostrados nesta apostila). Neste caso, faz-se necessária a utilização do pacote `Pygments` do *Python*. Como este pacote não pertence ao LaTeX, é necessário utilizar a opção `-shell-escape` para que o pacote `tcolorbox` possa utilizar o pacote `Pygments`. Neste caso, a utilização desta ocorre da seguinte forma:

=== "Comando"

    ```Bash linenums="1"
    latex -shell-escape arquivo.tex
    ```

Alguns editores tem a funcionalidade de atualizar automaticamente o documento final quando o código-fonte é salvo, como é o caso do editor *online* *Overleaf*. Quando o LaTeX é utilizado em linha de comando, é possível também obter um comportamente semelhante utilizando o comando `latexmk`: enquando o documento é editado e salvo, utilizando um editor local como o VIM, pode-se deixar o comando a seguir sendo executado em um outro terminal (no mesmo diretório):

=== "Comando"

    ```Bash linenums="1"
    latexmk -pvc -pdf -e '$pdflatex=q/xelatex %O -interaction=nonstopmode %S/' arquivo.tex 
    ```   

Após executar este comando (o terminal ficará ocupado), ocorrerá o seguinte:

```Bash linenums="1"
------------
Run number 1 of rule 'pdflatex'
------------
------------
Running 'xelatex  -recorder  -interaction=nonstopmode "arquivo.tex"'
------------
This is XeTeX, Version 3.14159265-2.6-0.999991 (TeX Live 2019) (preloaded format=xelatex)
restricted \write18 enabled.
entering extended mode
(./arquivo.tex
LaTeX2e <2019-10-01> patch level 3
(/usr/local/texlive/2019/texmf-dist/tex/latex/base/article.cls
Document Class: article 2019/10/25 v1.4k Standard LaTeX document class
(/usr/local/texlive/2019/texmf-dist/tex/latex/base/size10.clo))
(/usr/local/texlive/2019/texmf-dist/tex/latex/base/inputenc.sty

Package inputenc Warning: inputenc package ignored with utf8 based engines.

(/usr/local/texlive/2019/texmf-dist/tex/latex/lipsum/lipsum.sty
(/usr/local/texlive/2019/texmf-dist/tex/latex/l3kernel/expl3.sty
(/usr/local/texlive/2019/texmf-dist/tex/latex/l3kernel/expl3-code.tex
...
(/usr/local/texlive/2019/texmf-dist/tex/latex/lipsum/lipsum.ltd.tex))
(./arquivo.aux) [1] (./arquivo.aux) )
Output written on arquivo.pdf (1 page).
Transcript written on arquivo.log.
=== TeX engine is 'XeTeX'
Latexmk: Log file says output to 'arquivo.pdf'
Latexmk: All targets () are up-to-date
Latexmk: I have not found a previewer that is already running.
So I will start it for 'arquivo.pdf'
------------
For rule 'view', running '&if_source(  )' ...
------------
Running 'start open "arquivo.pdf"'
------------

=== Watching for updated files. Use ctrl/C to stop ...
```

Observe a mensagem `=== Watching for updated files. Use ctrl/C to stop ...`. Se o documento PDF estiver aberto em um visualizador como o *Adobe Acrobat* ou o *Evince*, o documento deverá ser atualizado sempre que o código-fonte for salvo.

Por fim, todo o conteúdo desta apostila pode ser acessado a partir de [https://github.com/cfbastarz/CursoIntroLaTeX](https://github.com/cfbastarz/CursoIntroLaTeX). Para obter uma cópia do repositório, basta seguir os passos abaixo:

=== "Comando"

    ```Bash linenums="1"
    git clone git@github.com:cfbastarz/CursoIntroLaTeX.git
    ```

Para compilar o código, será necessário ter o pacote `Pygments` do *Python* instalado na máquina. Para instalar este pacote, basta utilizar um dos comandos a seguir:

=== "Comando"

    ```Bash linenums="1"
    sudo easy_install Pygments
    ```

ou

=== "Comando"

    ```Bash linenums="1"
    sudo apt-get install python-pygments
    ```

No Mac OS X, pode-se utilizar o gerenciador de pacotes `brew` para instalar o pacote `pygments`:

=== "Comando"

    ```Bash linenums="1"
    brew install pygments
    ```

A apostila (e os outros materiais), podem ser finalmente compilados utilizando o compilador XeLaTeX e o BibTeX:

=== "Comando"

    ```Bash linenums="1"
    xelatex -interaction=nonstopmode -shell-escape publicacao.tex
    bibtex publicacao
    xelatex -interaction=nonstopmode publicacao.tex
    xelatex -interaction=nonstopmode publicacao.tex
    ```
