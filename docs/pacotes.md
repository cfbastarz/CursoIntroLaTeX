# 5. Pacotes Utilizados

Neste apêndice estão sumarizados os pacotes carregados pelo estilo do INPE ([Tabela 1](#tab:pacotes)) e os pacotes extras utilizados para a produção deste documento ([Tabela 2](#tab:pacotes_uteis)). Nas tabelas estão listados os pacotes junto com uma breve descrição e uso, para que o leitor entenda a função e o contexto da utilização destes pacotes. Clique nos *links* da coluna "Pacote" para acessar a documentação oficial do pacote no site do CTAN. 

<a id="tab:pacotes"></a>

**Tabela 1:** Pacotes carregados pelo estilo do INPE.

| Pacote | Descrição/Uso |
|--------|---------------|
| [titlesec](https://www.ctan.org/pkg/titlesec) | Necessário para a formatação das páginas. |
| [titletoc](https://www.ctan.org/pkg/titletoc) | Necessário para a confecção das listas de tabelas figuras etc. |
| [textcase](https://www.ctan.org/pkg/textcase) | Necessário para poder deixar partes do texto em letras minúsculas. |
| [ifthen](https://www.ctan.org/pkg/ifthen)     | Essencial para utilizar operadores de condicionais. |
| [calc](https://www.ctan.org/pkg/calc)         | Essencial para realizar operações matemáticas no LaTeX. |
| [graphics](https://www.ctan.org/pkg/graphics) | Essencial para inserir figuras (suporte básico). |
| [graphicx](https://www.ctan.org/pkg/graphicx) | Essencial para inserir figuras (suporte avançado). |
| [pstricks](https://www.ctan.org/pkg/pstricks-base) | Essencial para inserir figuras no formato *PSTricks* (*PostScript*). |
| [pst-grad](https://www.ctan.org/pkg/pst-grad) | Essencial para inserir figuras no formato *PSTricks*, permite a representação de gradientes. |
| [pst-plot](https://www.ctan.org/pkg/pst-plot) | Essencial para inserir figuras no formato *PSTricks*, permite a plotagem de dados (com a representação de eixos). |
| [color](https://www.ctan.org/pkg/color) | Essencial aplicar cores no texto. |
| [inputenc](https://www.ctan.org/pkg/inputenc) | Essencial para a acentuação. |
| [float](https://www.ctan.org/pkg/float) | Essencial para o posicionamento relativo de ambientes como figuras e tabelas. |
| [babel](https://www.ctan.org/pkg/babel) | Essencial para a localização das estruturas do texto (nomes de figuras, tabelas, seções etc). |
| [hyphenat](https://www.ctan.org/pkg/hyphenat) | Essencial para a hifenização. |
| [array](https://www.ctan.org/pkg/array) | Essencial para a representação de arranjos e tabelas. |
| [setspace](https://www.ctan.org/pkg/setspace) | Essencial para a definição de espaços entre linhas no texto. |
| [bigdelim](https://www.ctan.org/pkg/bigdelim) | Essencial para uso de tabelas. |
| [multirow](https://www.ctan.org/pkg/multirow) | Essencial para uso de tabelas com linhas mescladas. |
| [supertabular](https://www.ctan.org/pkg/supertabular) | Essencial para uso de tabelas. |
| [tabularx](https://www.ctan.org/pkg/tabularx) | Essencial para uso de tabelas com largura fixa. |
| [longtable](https://www.ctan.org/pkg/longtable) | Essencial para uso de tabelas longas (entre páginas). |
| [lastpage](https://www.ctan.org/pkg/lastpage) | Essencial para a representação do número de páginas total do documento. |
| [lscape](https://www.ctan.org/pkg/lscape) | Essencial para orientação no modo paisagem. |
| [rotate](https://www.ctan.org/pkg/rotate) | Essencial para rotacionar corpos flutuantes (figuras, tabelas). |
| [caption2](https://www.ctan.org/pkg/caption2) | Essencial para o pacote ABNT. |
| [amsmath](https://www.ctan.org/pkg/amsmath) | Essencial para linguagem matemática. |
| [amssymb](https://www.ctan.org/pkg/amsfonts) | Essencial para linguagem matemática. |
| [amsthm](https://www.ctan.org/pkg/amsthm) | Essencial para linguagem matemática. |
| [subfigure](https://www.ctan.org/pkg/subfigure) | Essencial fazer subfiguras (lado-a-lado ou empilhadas). |
| [tocloft](https://www.ctan.org/pkg/tocloft) | Essencial para controlar o sumário e outras listas. |
| [makeidx](https://www.ctan.org/pkg/makeidx) | Essencial para fazer índice. |
| [eso-pic](https://www.ctan.org/pkg/eso-pic) | Permite a inserção de figuras em posições absolutas em várias páginas de um documento. |
| [hyperref](https://www.ctan.org/pkg/hyperref) | Melhora o suporte a hipertexto (*links*, *urls* e outros endereços) no LaTeX. |
| [ae](https://www.ctan.org/pkg/ae) | Essencial para as fontes no arquivo PDF. |
| [lmodern](https://www.ctan.org/tex-archive/info/lmodern) | Permite copiar e colar o texto com acentuação a partir do arquivo PDF. |
| [geometry](https://www.ctan.org/pkg/geometry) | Essencial para definir as dimensões do documento (margens e outros espaçamentos). |

Além dos pacotes listados na [Tabela 1](#tab:pacotes), também são carregados os pacotes do estilo de citação da Associação Brasileira de Normas Técnicas (ABNT). Este pacote está incluído diretamente na distribuição do estilo do INPE, de forma que o seu uso seja independente do pacote ABN$\TeX{}$2 que geralmente está presente nas distribuições do LaTeX. Os arquivo do estilo de citação da ABNT que estão incorporados ao estilo do INPE, são os seguintes:

* `abnt-options.bib`
* `abnt-num.bst`
* `abntex-abrev.sty`
* `abntcite.sty`
* `abnt-alfportuguese.bst`
* `abnt-alfenglish.bst`
* `abnt-alf.bst`
* `abntex-abrev-pt_BR.def`

Para a confecação desta apostila, além dos pacotes que já se encontram pré-carregados pelo estilo do INPE, foram também utilizados os pacotes que estão relacionados na [Tabela 2](#tab:pacotes_uteis) a seguir.

<a id="tab:pacotes_uteis"></a>

**Tabela 2:** Pacotes extras utilizados neste documento.

| Pacote | Descrição/Uso |
|--------|---------------|
| [xcolor](https://www.ctan.org/pkg/xcolor) | Fornece as cores básicas do LaTeX. Veja a [Seção 2.6](../cores/#26-cores-e-paletas-de-cores) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [xcolor-material](https://www.ctan.org/pkg/xcolor-material) | Fornece as cores do projeto *Material Design* do Google. Veja a [Seção 2.6](../cores/#26-cores-e-paletas-de-cores) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [xcolor-solarized](https://www.ctan.org/pkg/xcolor-solarized) | Fornece as cores do projeto *Solarized*. Veja a [Seção 2.6](../cores/#26-cores-e-paletas-de-cores) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [minted](https://www.ctan.org/pkg/minted) | Permite a inserção de códigos de *scripts* e linguagens de programação, com várias opções. Veja a [Seção 2.16](../outros_ambientes/#2-entendendo-o-latex) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [multicol](https://www.ctan.org/pkg/multicol) | Permite a inserção de texto e corpos flutuantes em colunas. Veja a [Seção 2.16.2](../outros_ambientes/#2162-texto-em-colunas) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [listings](https://www.ctan.org/pkg/listings) | Permite a inserção de códigos de *scripts* e linguagens de programação. |
| [ulem](https://www.ctan.org/pkg/ulem) | Permite riscar expressões matemáticas. Veja a [Seção 2.4](../tipos_letras/#24-tipos-tamanhos-e-estilos-de-letras) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [cancel](https://www.ctan.org/pkg/cancel) | Permite riscar palavras. Veja a [Seção 2.4](../tipos_letras/#24-tipos-tamanhos-e-estilos-de-letras) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [lipsum](https://www.ctan.org/pkg/lipsum) | Permite a utilização de texto prolixo. |
| [graphicx](https://www.ctan.org/pkg/graphicx) | Permite a utilização de imagens de exemplo. Veja a [Seção 2.4](../figuras/#212-figuras) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [booktabs](https://www.ctan.org/pkg/booktabs) | Permite a utilização das réguas `toprule`, `midrule`, `bottomrule` e melhora o espaçamento entre as linhas de uma tabela. Veja a [Seção 2.14](../tabelas/#214-tabelas) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [metalogo](https://www.ctan.org/pkg/metalogo) | Permite a inserção das formas estilizadas dos nomes TeX, LaTeX, XeLaTeX etc. |
| [enumitem](https://www.ctan.org/pkg/enumitem) | Permite controlar a marcação de listas ordenadas e não ordenadas. Veja a [Seção 2.11](../listas/#211-listas) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [subfig](https://www.ctan.org/pkg/subfig)  | Permite a inserção de figuras lado-a-lado dentro do ambiente `figure`. Veja a [Seção 2.12](../figuras/#212-figuras) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |
| [tcolorbox](https://www.ctan.org/pkg/tcolorbox) | Permite a inserção das caixas de dicas, exemplos e exercícios. |
| [lscape](https://www.ctan.org/pkg/lscape) | Permite a rotação das páginas do documento. Veja a [Seção 2.16](../outros_ambientes/#2-entendendo-o-latex) da [Parte 2](../intro_latex/#2-entendendo-o-latex). |