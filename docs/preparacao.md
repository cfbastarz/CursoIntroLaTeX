# 1. Preparação 

## 1.1 Introdução

Metodologia científica compreende conjunto das técnicas necessárias para a produção científica. Artigos, relatórios, dissertações e teses são documentos que trazem relatos de experiências, muitas vezes práticas, que surgem da necessidade de se testar hipóteses. Estas hipóteses frequentemente referem-se ao mundo físico em que vivemos, mas podem também, serem formuladas a cerca de ideias abstratas. O método científico, assim como preconizou o patrono de todas as ciências, Renè Descartes, em seu "O Discurso do Método" [(DESCARTES; NEVES, 2005)](#descartes), representa uma sequência de etapas que visam testar as hipóteses que formulamos e então, transformá-las em teses, em teorias.

A escrita é parte fundamental da metodologia científica. É através dela que documentamos todo o processo de desenvolvimento da ciência, é através dela que se faz a comunicação formal da ciência que se produz e que, finalmente, se materializa o conhecimento adquirido. A escrita científica deve ser pautada por normas que ajudam a verificar a natureza do que se escreve e a validade dos argumentos com que se trata o objeto de estudo.

O TeX (pronuncia-se "Tec", sendo o "X" ao final a letra $\chi$ do alfabeto Grego)[^1], foi criado pelo Matemático e Cientista da Computação americano Donald Ervin Knuth, em 1978 para facilitar a escrita e melhorar a apresentação de textos científicos, principalmente aqueles com notações matemáticas. Naquela época, não existiam editores de texto formatado, como por exemplo o *Microsoft Word*, *Libre Office* e outros. Estes software viriam a ser lançados a partir de meados da década de 1980. Além disso, o computador pessoal estava em seus primórdios, e viria a se popularizar com o lançamento do *Apple II*, no final dos anos 1970. Este tipo de computador, incluindo os seus clones (i.e., demais computadores que possuíam o mesmo *layout* de processador e memória de acesso randômico) não possuíam interfaces gráficas, *mouses* e discos rígidos; eles possuíam apenas um compilador *BASIC* e tela monocromática. Tendo-se em vista este cenário, a produção científica já havia avançado, pois o computador sempre foi uma ferramenta essencial nas mais diversas áreas do conhecimento (imagine como se comunicava a ciência antes do advento dos computadores no século XXI, ou mesmo antes da invenção da prensa móvel no século XV). 

Por outro lado, com os avanços tecnológicos e a sofisticação dos computadores pessoais, houve também a necessidade de se melhorar a representação tipográfica dos textos científicos, além da qualidade de imagens e gráficos. Em 1986, o matemático e cientista da computação Leslie Lamport lança a primeira versão do LaTeX, uma versão aprimorada e de mais fácil utilização do que o TeX puro. Consequentemente, por ser de mais fácil utilização (no sentido de que o LaTeX simplifica a utilização do TeX puro através de uma série de *macros*), o LaTeX tornou-se mais popular e trouxe atenção para uma forma bastante eficiente de se produzir documentos bem diagramados e aspecto profissional.

A confecção de documentos utilizando o LaTeX, como o leitor deverá perceber, pode ser um pouco trabalhosa, visto que a linguagem é focada na marcação da escrita, e não na formatação como é o caso das suítes de escritório como o *Microsoft Office*. Neste caso, o usuário deve ponderar sobre a conveniência e o tipo de documento que tem por intenção produzir. A escrita de um documento utilizando o LaTeX é vantajosa quando: 1) um estilo já está preparado (e.g., artigo científico, dissertação, tese, relatório etc); 2) quando muitos elementos textuais estiverem presentes (e.g., figuras, tabelas, equações, referências cruzadas, quebras de seções etc); 3) quando se tem tempo suficiente. Entre estes três pontos, deve-se ressaltar o tempo necessário para a escrita de documentos utilizando LaTeX. Embora a linguagem permita que a escrita seja focada no conteúdo do texto (ao invés do seu aspecto), há uma curva de aprendizado e é bastante frequente que o usuário da linguagem se encontre em situações em que necessita criar uma tabela um pouco mais complicada, ou inserir e organizar um conjunto de figuras de uma forma diferente. Estas situações podem não ser de fácil solução e o usuário precisará ou ler a documentação dos pacotes (pelo qual consome-se muito tempo), ou recorrer a fóruns na *internet* para resolver seus problemas. Há vários fóruns na *internet* que são especializados na linguagem LaTeX e são uma boa fonte para a solução de diversas dúvidas e problemas. Apesar disso, um efeito colateral é que o usuário acaba não aprendendo como usar efetivamente a linguagem, porque nunca está a par da documentação e dos detalhes de utilização dos pacotes. Logo, esta apostila foi escrita como uma forma de orientar os usuários a adquirirem o mínimo de independência na utilização do LaTeX e saber onde procurar ajuda para a solução de eventuais problemas.

Contudo, depois do exposto, pode-se fazer a seguinte pergunta: "Se é necessário ponderar tanto a utilização do LaTeX na escrita de documentos, por que ele ainda é melhor do que o *Microsoft Word* (e outros)?". Esta é uma pergunta frequente, mas há razões práticas para a escolha do LaTeX em relação aos demais editores de texto. O professor Kent H. Lundberg do *Massachussets Institute of Technology* (MIT), escreveu uma lista com 10 razões que ajudam a justificar a escollha do TeX - e também do LaTeX! (disponível em <http://web.mit.edu/klund/www/urk/texvword.html>). Em uma tradução livre, estas razões seriam:

**Dez razões porque o TeX[^2] é melhor do que o *Word*[^3]:**

1. O modo de matemática do TeX é belo. Equações são apresentadas da forma correta. Expressões matemáticas no *Word* são pós-processadas[^5]. O editor de equações do *Word* não é do bem;
1. O TeX não possui *bugs*. O autor da linguagem, o professor Donald Knuth, da *Stanford University*, enviará um prêmio a quem encontrar um *bug* na linguagem. O prêmio atualmente é de $ 327,68 dólares (ou $ $2^{15}$ centavos de dólares);
1. O TeX é gratuito e livre (como a liberdade de expressão);
1. O TeX possui comentários reais. Qualquer pessoa que não comenta o seu próprio código, tem problemas[^6];
1. O TeX é completo[^7]. O texto produzido a partir do que se digita, pode ser o resultado de estruturas condicionais (as quais podem ser reutilizadas em diferentes seções de um documento) ou mesmo cálculos complicados[^8]. No livro TeX *book*[^9], Donald Knuth demonstra o poder da linguagem TeX definindo o comando `\primes{n}`, que calcula e imprime os primeiros $n$ números primos ([Knuth (1996)](#knuth/1996), página 218);
1. As *macros* do TeX não contém vírus. Pode-se receber seguramente documentos TeX por *e-mail* e não se preocupar se ao abrí-los eles lerão a sua lista de contatos do *Microsoft Outlook* e fazer cópias de si mesmo para os seus colegas;
1. O TeX não tem um *Globally Unique Identifier* (GUID). Documentos do *Word*[^10] possuem um código embutido que pode ser rastreado até o computador em que foi originado (no final dos anos 1990, a polícia capturou o autor do vírus Melissa rastreando o seu GUID);
1. As versões do TeX não são incompatíveis entre si. O formato dos arquivos nunca mudou. Arquivos TeX de 1989 funcionam sem nenhum problema com a última versão do TeX;
1. O TeX não possui a função "voltar". Isso é uma coisa boa. Ninguém nunca poderá ver as versões anteriores dos seus documentos TeX pressionando o botão "voltar"[^11];
1. Documentos TeX são pequenos e enxutos. Qual é o menor documento *Word* no seu computador?

[^5]: No sentido de que parece que elas não fazem parte do texto.
[^6]: No original, utilizou-se uma expressão inadequada.
[^7]: No texto original, utilizou-se a expressão *Turing-complete language*, uma referência à máquina de Alan Turing (o pai da computação). A máquina de Turing, seria uma máquina capaz de nos auxiliar a resolver todos os problemas.
[^8]: Sim, pois o TeX é, essencialmente, uma linguagem de programação.
[^9]: Uma cópia pública deste livro pode ser obtida em [http://www.ctex.org/documents/shredder/src/texbook.pdf](http://www.ctex.org/documents/shredder/src/texbook.pdf).
[^10]: Como pode ser verificado na documentação disponível em [https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-rdperp/80ac56ea-2859-447d-9e39-97ef6f03b6ee](https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-rdperp/80ac56ea-2859-447d-9e39-97ef6f03b6ee).
[^11]: No caso desta apostila, por exemplo, isto é perfeitamente possível porque ela foi editada com uma ferramenta que permite recuperar revisões anteriores de um mesmo documento, assim como qualquer editor moderno da linguagem, além de estar disponível no GitHub em [https://github.com/cfbastarz/CursoIntroLaTeX](https://github.com/cfbastarz/CursoIntroLaTeX).

É fato que este "manifesto" foi escrito há muito tempo atrás. Apesar disso, pode-se estender as ideias nele relacionadas ao próprio LaTeX e suas revisões mais recentes. Além disso, deve-se observar também que muitas ferramentas de edição foram criadas desde então e que a qualidade dos documentos do *Microsoft Word* melhorou substancialmente, tornando-o um *software* muito popular, largamente utilizado e vantajoso apesar do seu custo. Um processo semelhante ocorreu com o TeX e sua evolução para o LaTeX, o que inclui também os seus compiladores mais modernos como o PdfLaTeX, XeLaTeX, LuaLaTeX e outros.

A década de 2010 foi marcada por uma revolução na forma como as ferramentas *online* tem sido criadas e utilizadas. No caso do LaTeX, percebe-se um aumento no número dos serviços que facilitam a edição de documentos *online*, i.e., na nuvem e sem a necessidade de se ter um ambiente local preparado para isto. Na [Figura 1](#fig:leao_ctan){reference-type="ref" reference="fig:leao_ctan"}, está desenhado o mascote do *Comprehensive TeX Archive Network* (CTAN), uma comunidade de utilizadores e mantenedores da linguagem LaTeX e dos seus inúmeros pacotes. Este mascote tem acompanhado o LaTeX desde a sua gênese no final dos anos 1970 e tem sido utilizado desde então na representação da linguagem, passando por todas as suas fases, incluindo a era mais moderna da computação e da *internet*.

<a id="fig:leao_ctan"></a>

<figure markdown>
  ![O mascote do *Comprehensive TeX Archive Network* (CTAN).](./figs/ctanlion.png){ width="500" }
  <figcaption>Figura 1: O mascote do Comprehensive TeX Archive Network (CTAN).</figcaption>
</figure>

Este material foi escrito com base na experiência pessoal do autor e com base nas necessidades dos alunos da pós-graduação do Instituto Nacional de Pesquisas Espaciais (INPE), compiladas pelo Serviço de Informação e Documentação (SESID) do instituto. A maioria dos exemplos, quando não explicitamente indicada a fonte, é baseada em exemplos pessoais, outros tutoriais sobre a linguagem, *sites* diversos e fóruns como o TeX *Stack Exchange*, além dos manuais e tutoriais do *Overleaf*. Durante a escrita do material, procurou-se organizar as informações de forma que fosse possível ao leitor encontrar o máximo de informações, através dos exemplos e dos resultados em anexo, os quais são mostrados sempre juntos. Uma lista de exercícios também foi incluída para que o leitor possa treinar e adquirir fluência na escrita com a linguagem LaTeX. Devido à grande quantidade de elementos coloridos inseridos ao longo do documento, não recomenda-se a sua impressão. Ao invés disso, orienta-se a utilização desta apostila no computador, de forma que se possa tirar vantagem das ferramentas de busca do visualizador de documentos. 

## 1.2 Objetivos 

Nesta apostila são apresentados os conceitos fundamentais da linguagem de marcação LaTeX, com especial atenção à utilização do estilo do INPE para a escrita de dissertações e teses. Os objetivos específicos são: 

* Apresentar a linguagem de marcação LaTeX, acompanhado de um breve histórico sobre o seu desenvolvimento;
* Orientar o usuário sobre a instalação do compilador/interpretador da linguagem nas plataformas mais frequentemente utilizadas;
* Expor ao usuário os conceitos fundamentais da linguagem, levando-o a ter independência na utilização do estilo do INPE;
* Treinar o usuário na utilização dos estilo do INPE para a escrita de dissertações, teses e propostas.

## 1.3 Estrutura e Organização do Documento

Este documento foi preparado utilizando o estilo de teses e dissertações do INPE, com a finalidade de servir não apenas como uma manual de utilização do estilo, mas também como um documento simples que possa ser utilizado como uma referência no aprendizado da linguagem de marcação LaTeX. Para cumprir com esta finalidade, ao longo dos capítulos e das seções que se seguem, alguns elementos especiais foram incorporados para sinalizar instruções específicas, como comandos do ambiente *Shell* do Linux e dicas ou instruções sobre pontos específicos do que está sendo apresentado.

Dessa forma, dicas e observações são destacados da seguinte forma:

!!! tip "Dica"

    Isto é uma dica ou uma observação!

De outra forma, comandos que devem ser digitados em um emulador de terminal (e.g., o *Shell* do Linux, Mac OS ou Windows), são destacados como:

=== "Comando"

    ```Bash linenums="1"
    echo "Isto é um comando de prompt!"
    ```

Em geral, estas inserções são mostradas para auxiliar o leitor na execução de comandos que o auxiliarão na instalação de pacotes da linguagem LaTeX, na utilização de *scripts* no *Shell* ou mesmo na utilização de outros programas em linha de comando.

Exemplos da linguagem são apresentados em uma caixa, contendo a grafia dos comandos e o seu resultado em anexo (ao lado ou abaixo). Exercícios são apresentados de forma semelhante, mas com a diferença de que é apresentado um exemplo (e.g., uma tabela) o qual o usuário deverá reproduzir em ambiente local ou *online* configurado para tal. As respostas dos exercícios são então apresentadas no Anexo A. Ao longo do texto, o leitor irá notar que na maioria dos exemplos que contém algum tipo de texto, aparece um texto prolixo. Este texto é gerado automaticamente com o auxílio de um pacote chamado `lipsum`, e não faz, necessariamente, referência a nada específico[^4]. Outras frases também utilizadas em alguns exemplos, são "Jane quer LP, fax, CD, giz, TV e bom whisky" (um pangrama com 30 letras) e "À noite, vovô Kowalsky vê o ímã cair no pé do pinguim queixoso e vovó põe açúcar no chá de tâmaras do jabuti feliz", uma frase com 90 letras, incluindo todas as letras acentuadas. Estas frases foram obtidas da página <https://pt.wikipedia.org/wiki/Pangrama>.

O documento está organizado em 4 partes principais. A [Parte 1](#1-preparacao) trata da introdução e objetivos da apostila documento e da linguagem LaTeX. A [Parte 2](../intro_latex#2-entendendo-o-latex) apresenta uma introdução aos elementos e marcadores principais da linguagem. Ao final desta parte, o usuário deverá ser capaz de produzir documentos LaTeX simples, utilizando as classes mais comuns e os elementos textuais mais frequentes. Na [Parte 3](../estilo_inpe#3-estilo-do-inpe), é apresentado o estilo de INPE para a escrita de teses e dissertações. Ao final desta parte, o usuário deverá ser capaz de utilizar o estilo do INPE para a escrita de sua tese ou dissertação. É importante salientar, entretanto, que a Parte 3 requer o aprendizado do conteúdo da Parte 2. A [Parte 4](../beamer/#3-apresentacoes-com-o-beamer), apresenta o pacote *Beamer*, uma classe que pode ser utilizada para confeccionar apresentações.

## 1.4 Preparação do Ambiente

O LaTeX é um conjunto de *macros* do TeX que são interpretadas por um compilador. Para a sua utilização, é necessário instalar este compilador no computador. Nas seções a seguir, é mostrado como instalar o LaTeX nos sistemas operacionais nos sistemas Windows, Linux e Mac OS. A utilização da linguagem pode ser feita de diversas formas, em linha de comando, utilizando editores de texto puro ou ainda editores mais avançados do tipo *What You See Is What You Get* (WYSIWYG). No entanto, é possível também utilizar a linguagem em editores *online*. A utilização básica da linguagem será vista nos capítulos e seções mais adiante.

### 1.4.1 Escolhendo e instalando o compilador

Nas próximas seções, será mostrado como instalar e configurar o compilador/interpretador da linguagem LaTeX nos sistemas operacionais mais utilizados.

### 1.4.2 Linux

Nos sistemas GNU Linux, a instalação do interpretador da linguagem LaTeX e dos seus pacotes é bastante simples, mas pode variar de acordo com a distribuição utilizada. Neste manual, são abordadas as distribuições mais populares e que utilizam os sistemas de pacotes *Advanced Packaging Tool* (APT, para a distribuição Debian e derivados, e.g., Ubuntu e Linux Mint) e *Danified Yum* (DNF, para a distribuição RedHat e derivados, e.g., Fedora e CentOS). A vantagem destes gerenciadores de pacotes está no fato de que eles resolvem automaticamente as dependências, i.e., eles são capazes de instalar outros pacotes que são necessários para o correto funcionamento do programa principal. Em outras distribuições o processo de instalação pode ser diferente ou mesmo envolvendo a instalação a partir dos códigos fonte dos pacotes.

No Linux, a principal distribuição da linguagem é o pacote TeX*live* (<https://www.tug.org/texlive/>). Para instalar o pacote no Debian e derivados, basta fazer:

=== "Comando"

    ```Bash linenums="1"
    sudo apt install texlive-full
    ```

No RedHat e derivados, basta fazer:

=== "Comando"

    ```Bash linenums="1"
    sudo dnf install texlive-scheme-full
    ```

!!! note "Nota"

    Mesmo instalando o pacote completo do "texlive", é possível que outros pacotes precisem ser instalados depois.

Neste momento, pode-se também escolher um editor a fim de que possam ser produzidos documentos localmente. Nesta etapa, sugere-se a instalação do editor TeX*Studio*:

=== "Comando"

    ```Bash linenums="1"
    sudo apt install texstudio
    ```

Analogamente, nas distribuições que utilizam o gerenciados de pacotes DNF:

=== "Comando"

    ```Bash linenums="1"
    sudo dnf install texstudio
    ```

!!! tip "Dica"

    Para mais detalhes sobre o processo de instalação do LaTeX nas distribuições baseadas no Fedora, acesse a página <https://docs.fedoraproject.org/en-US/neurofedora/latex/>.

### 1.4.3 Windows 

No sistema operacional *Microsoft Windows*, a instalação do pacote TeX*live* pode ser feita de forma convencional, através do instalador oficial da distribuição disponível em <http://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe> (este endereço aponta sempre para o pacote mais recente). Após baixar o pacote, siga as instruções na tela para completar a instalação.

!!! note "Nota"

    O usuário deverá estar atento durante a instalação do LaTeX no Windows, pois o processo de instalação é diferente e pode acarretar em inconvenientes.

O editor TeX*Studio* pode ser instalado no *Microsoft Windows* a partir do executável disponível em <https://github.com/texstudio-org/texstudio/releases/download/2.12.22/texstudio-2.12.22-win-qt5.exe>.

Outras informações sobre a instalação do LaTeX no sistema operacional *Microsoft Windows*, podem ser encontradas no documento [oficial](http://mtc-m16d.sid.inpe.br/col/sid.inpe.br/mtc-m19@80/2010/03.24.15.12/doc/ambiente_latex_no_windows.pdf) do SESID do INPE.

### 1.4.4 Mac OS

No Mac OS, a forma mais simples de instalar o pacote do TeX*live* é a partir do instalador disponível em <http://tug.org/cgi-bin/mactex-download/MacTeX.pkg> (da mesma forma, este endereço sempre aponta para o pacote mais recente). Se o leitor estiver habituado a utilizar algum tipo de gerenciador de pacote no Mac OS, e.g., o *Homebrew*, orienta-se a utilização deste método para a instalação da distribuição com os seguintes comandos:

=== "Comando"

    ```Bash linenums="1"
    brew install caskroom/cask/brew-cask brew cask install mactex
    ```

!!! note "Nota"

    Se você não possui o gerenciador de pacotes *Homebrew* instalado no seu Mac OS, veja como instalar em <https://brew.sh/index_pt-br>.

Outra forma de instalar os compiladores do LaTeX no Mac OS, é a partir do pacote de instalação do "MacTeX". Este pacote pode ser obtido a partir do endereço <http://www.tug.org/mactex/mactex-download.html>. Esta é a forma de instalação recomendada para este sistema operacional. Neste pacote estão presentes também alguns programas úteis, como o editor TeX*Shop*, o gerenciador de referências *BibDesk*, o editor de equações *LaTeXit* e o verificador de gramática *Excalibur*.

Para a edição de documentos LaTeX no Mac OS, recomenda-se também ao leitor a instalação do editor TeX*Studio*. O instalador deste editor pode ser obtido a partir do endereço <https://github.com/texstudio-org/texstudio/releases/>, onde deve ser escolhido o arquivo com a extensão `.dmg`.

Apesar das diferenças entre as instalações do LaTeX com relação aos diferentes sistemas operacionais, os resultados que se obtém a partir da compilação de um documento LaTeX são os mesmos. O leitor deve estar atento também às diferenças entre os tipos de compiladores, cujo uso pode ser diferente. Mais informações sobre os diferentes tipos de compiladores do LaTeX, serão fornecidas nos capítulos e seções a seguir.

[^1]: De fato, TeX vem do grego $\tau\epsilon\chi$ que representa arte e
    tecnologia em grego. TeX é portanto $\tau\epsilon\chi$ e não
    simplesmente "Tex" para que nos lembremos que o TeX foi criado para
    produzir documentos bonitos e cheios de matemática [(Knuth, 1996)](#knuth/1996).

[^2]: Ou o LaTeX.

[^3]: Ou qualquer outro *software* de processamento de textos.

[^4]: Veja algumas curiosidades sobre este verbete na sua entrada na
    Wikipedia em <https://pt.wikipedia.org/wiki/Lorem_ipsum>.

## Referências

* <a id="descartes"></a>Descartes, R.; Neves, P: **Discurso do Método**, *L&M Editores*, 2005.
* <a id="knuth/1996"></a>Knuth, D. E.: **The TeXbook**, *Addison-Wesley Professional*, 1996.
