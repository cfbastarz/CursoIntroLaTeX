# 2. Entendendo o LaTeX

## 2.3 Acentos e Localização

No LaTeX, os acentos podem ser escritos de forma literal, i.e., acentuando-se diretamente as vogais sem a necessidade de marcadores especiais, desde que os pacotes necessários estejam carregados. O `inputenc` é um pacote do LaTeX que fornece os formatos de marcação e linguagem adequados para a acentuação de, por exemplo, caracteres latinos acentuados. Além disso, para que as estruturas do texto que fazem referências à figuras e tabelas fiquem corretamente grafadas no idioma da escrita, é necessário utilizar-se o pacote `babel` indicando o dialeto no qual se está escrevendo. Outro pacote importante é o `fontenc` que trata da apresentação correta dos caracteres especiais, i.e., aqueles que são acentuados.

Nas versões mais recentes do LaTeX, é possível digitar palavras latinas acentuais sem a necessidade de carregar pacotes extras. No entanto, dependendo da instalação do LaTeX, pode ser necessário carregar pacotes extras.  Para digitar acentos de forma natural, é necessário carregar os pacotes a seguir, no preâmbulo do documento:

* `\usepackage[brazilian]{babel}`[^3]
* `\usepackage[T1]{fontenc}`
* `\usepackage[utf8]{inputenc}`[^4]

[^3]: Este pacote é apenas necessário para traduzir alguns elementos textuais, como as palavras *Table*, *Figure*, o formato da data etc.
[^4]: Pode-se utilizar também o pacote `latin1`, com o comando `\usepackage[latin1]{inputenc}`. Ambos os pacotes, `utf-8` e `latin1` fornecem o suporte ao UNICODE. Se o usuário quiser utilizar o formato *OpenType*, evite utilizar estes pacotes e utilize compiladores mais modernos como o XeLaTeX ou o LuaTeX.

!!! note "Nota"

    No estilo do INPE, os pacotes relacionados acima são pré-carregados. Porém, se o usuário utilizar os compiladores XeLaTeX ou LuaTeX, o usuário encontrará erros enquanto o pacote `inputenc` estiver carregado. Veja mais informações na [Seção ](#orientacoes-especiais) da [Parte 3](../estilo_inpe/#3-estilo-do-inpe).

Entretanto, em algumas situações é necessário marcar os acentos de forma explícita (e.g., na edição de um arquivo de referências do BibTeX, cujo formato é apresentado na [Seção 2.17](../citacoes_referencias/#217-citacoes-e-referencias).

No [Exemplo 1](#exe_acentos) a seguir, são mostrados os acentos mais comuns.

!!! example "<a id="exe_acentos"></a>Exemplo 1: Use de acentos latinos no LaTeX"

    === "Código"

        ```Latex linenums="1"
        \'A \'E \'I \'O \'U
        \'a \'e \'i \'o \'u
        \^a \^A \~a \~A \`a \`A \~o \~O
        \^e \^E \^o \^O
        \"u \"U
        \c{c} \c{C}
        ```

    === "Resultado"

        ![](./figs/ex_2.3-1.png)

!!! note "Nota"

    Outras marcações especiais para acentuação de caracteres podem ser encontradas em [https://en.wikibooks.org/wiki/LaTeX/Special_Characters](https://en.wikibooks.org/wiki/LaTeX/Special_Characters).