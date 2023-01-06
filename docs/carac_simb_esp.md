# 2. Entendendo o LaTeX

## 2.2 Caracteres e símbolos especiais

No LaTeX há 10 tipos de caracteres especiais. São eles:

1. `\textbackslash`
1. `\#`
1. `\$`
1. `\%`
1. `\&`
1. `\^{}`
1. `\_`
1. `\{`
1. `\}`
1. `\texttt{\~{}}`

Às vezes é necessários utilizá-los ao longo do texto. Por exemplo, o `%` (porcento) é utilizado para inserir comentários no corpo do texto (veja o [Exemplo 1](../intro_latex#exe_doc). O uso destes caracteres ao longo do texto requer alguns cuidados especiais, e então, faz-se necessário destacá-los. Há duas formas de fazer isso: 1) escapando-os ou 2) utilizando comandos especiais para a sua correta representação.

Na primeira forma, basta utilizar a `$\backslash$` (barra invertida). Na segunda, utilizam-se comandos específicos do LaTeX. Veja o [Exemplo 1](#exe_caracesp) a seguir:

!!! example "<a id="exe_caracesp"></a>Exemplo 1: Marcação para caracteres especiais"

    === "Código" 

        ```Latex linenums="1"
        \textbackslash
        \\
        \^{}
        \\
        \texttt{\~{}}
        ```

    === "Resultado"

        ![](./figs/ex_2.2-1.png)

Outro caractere especial, são as `'` (aspas). No LaTeX, aspas simples são marcadas como `'`, enquanto que aspas duplas são marcadas como `""`. Portanto, palavras e expressões grafadas entre aspas simples ou duplas, devem aparecer como `aspas simples` e "aspas duplas", ao invés de 'aspas simples' ou "aspas duplas"  (como acontece quando se utiliza o acento trema " do teclado).

!!! note "Nota"

    No [Exemplo 1](#exe_caracesp), o comando `\\` pula uma linha. Para esta finalidade, pode-se utilizar também o comando `\newline`, ou simplesmente uma linha e branco.

No  [Exemplo 1](#exe_caracesp), observe que a barra invertida é produzida pelo comando `\textbackslash` ou pelo comando `$\backslash$`, quando em modo matemático (veja mais detalhes sobre o modo matemático na [Seção 2.13](../matematica/#213-matematica-e-equacoes)).