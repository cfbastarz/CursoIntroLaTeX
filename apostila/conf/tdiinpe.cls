%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tdiinpe.cls
% Classe INPE para teses e dissertacoes e outras publicações
%
%*     Instituto Nacional de Pesquisas Espaciais (INPE)                         *% 
%*     Copyright 2002-2015 © MCTI/INPE                                          *%
%*     Ao reusar o tdiinpe.cls por favor,                                       *%
%*     - mencione que o original foi desenvolvido pelo MCTI/INPE                *%
%*       e é acessível em: http://urlib.net/J8LNKAN8PW/32Q543H                  *%
%*     - indique de uma maneira razoável quais foram as alterações efetuadas    *%
%*     - renomeie este arquivo ou o deposite na plataforma URLib                *%
%*       para ele receber uma identificação própria como a de cima              *%
%
% Desenvolvedores passados:
% Bruno A.F. Roth (roth@lit.inpe.br) [10/04/2002] +55(12)3945 6312
% Alan W. S. da Silva (alan@sid.inpe.br) [11/08/2005] +55(12)3945 6911
% Mantenedor e Desenvolvedor atual:
% Gerald J. F. Banon (banon@dpi.inpe.br) [25/03/2008] +55(12)3945 6489
% Gerald J. F. Banon (gerald.banon@gmail.com) [11/05/2015] +55(12)3923 4742
%
% ----- Identificacao:
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
%\ProvidesClass{tdiinpe}[2002/04/10 v1.0a]
%\ProvidesClass{tdiinpe}[2005/04/05 v1.1a]
%\ProvidesClass{tdiinpe}[2005/07/29 v1.3a]
%\ProvidesClass{tdiinpe}[2008/04/16 v1.4a]
%\ProvidesClass{tdiinpe}[2009/09/27 v1.5a]
%\ProvidesClass{tdiinpe}[2009/10/07 v1.6a]
%\ProvidesClass{tdiinpe}[2009/10/07 v1.7a]
%\ProvidesClass{tdiinpe}[2009/10/07 v1.8]
%\ProvidesClass{tdiinpe}[2009/10/07 v1.9]
%\ProvidesClass{tdiinpe}[2009/10/07 v1.10]
%\ProvidesClass{tdiinpe}[2010/05/01 v1.11]
%\ProvidesClass{tdiinpe}[2010/06/21 v1.12]
%\ProvidesClass{tdiinpe}[2010/06/21 v1.13]
%\ProvidesClass{tdiinpe}[2010/10/07 v1.14]
%\ProvidesClass{tdiinpe}[2010/10/07 v1.15]
%\ProvidesClass{tdiinpe}[2011/03/17 v1.16]
%\ProvidesClass{tdiinpe}[2011/10/09 v1.17]
%\ProvidesClass{tdiinpe}[2011/12/06 v1.18]
%\ProvidesClass{tdiinpe}[2012/10/19 v1.19]
%\ProvidesClass{tdiinpe}[2013/05/22 v1.20]
%\ProvidesClass{tdiinpe}[2013/05/22 v1.21]
%\ProvidesClass{tdiinpe}[2013/09/02 v1.22]
%\ProvidesClass{tdiinpe}[2013/10/07 v1.23]
%\ProvidesClass{tdiinpe}[2013/10/29 v1.24]
%\ProvidesClass{tdiinpe}[2013/12/24 v1.25]
%\ProvidesClass{tdiinpe}[2014/01/17 v1.26]
%\ProvidesClass{tdiinpe}[2014/03/20 v1.27]
%\ProvidesClass{tdiinpe}[2014/06/08 v1.28]
%\ProvidesClass{tdiinpe}[2014/07/23 v1.29]
%\ProvidesClass{tdiinpe}[2014/10/07 v1.30]
%\ProvidesClass{tdiinpe}[2015/01/29 v1.31]
%\ProvidesClass{tdiinpe}[2015/06/10 v1.32]
%\ProvidesClass{tdiinpe}[2015/11/16 v1.33]
%\ProvidesClass{tdiinpe}[2016/07/24 v1.34]
%\ProvidesClass{tdiinpe}[2018/09/21 v1.35]
\ProvidesClass{tdiinpe}[2019/04/02 v1.36]

% modificaçoes (mais acima, mais atual) - última modificação: 02 de abril de 2019
% - Troca de: COMISSÃO DO CONSELHO DE EDITORAÇÃO E PRESERVAÇÃODA PRODUÇÃO INTELECTUAL DO INPE (DE/DIR-544, por CONSELHO DE EDITORAÇÃO E PRESERVAÇÃO DA PRODUÇÃOINTELECTUAL DO INPE - CEPPII (PORTARIA No176/2018/SEI-INPE) (André Fernandes 2019-04-02)
% - inclusão do commando \financiamento para informar abaixo da ficha catalográfica sobre a(s) fonte(s) financiador(es) (banon 2018-09-21)
%   o comando \financiamento{xxx} deve ser colocado depois de \begin{documment} e antes de \maketitle
%   onde xxx é o texto referente à(s) fonte(s) financiador(es).
% - modificação do código do comando \FONTE para que as fontes curtas fiquem centralizadas (gjfb - banon 2016-07-24)
% - introdução do campo \autorFICHAC para ter os nomes dos autores separados por (;) na ficha catalográfica (ex: Nome Completo do Autor1; Nome Completo do Autor2). Campo opcional (se não usado prevalece \author - observação: se há mais de um autor, o campo \author deve ser preenchido assim: Nome Completo do Autor1\\Nome Completo do Autor2). A possibilidade de ausência do campo \autorFICHAC é prático quando a obra tem apenas um autor. Nesse caso basta preencher apenas o campo \author. (banon 2015-11-16)
% - introdução da opção de copyright: GPLv3 (banon 2015-06-10)
% - inclusão da palavra COMISSÃO/COMMISSION no comando \ConselhoDeEditoracao (clayton 2015-01-29)
% - inclusão do commando \marcaRegistrada para informar abaixo da ficha catalográfica sobre marca registrada.
%   o comando \marcaRegistrada{xxx} deve ser colocado depois de \begin{documment} e antes de \maketitle
%   onde xxx é o texto referente à marca registrada.
% - alteração de \newcommand{\FONTE} para assegurar o alinhamento do fonte com a legenda (banon 2014-07-23)
%   para figuras o posicionamento de título, legenda e fonte segue as três regras abaixo: 
%   1. As legendas curtas ficam centralizadas - As legendas longas ficam justificadas.
%   2. O fonte segue a mesma regra quando não tem legenda. Quando tem legenda, ele fica alinhado com a legenda.
%   3. A segunda linha de um fonte longo e as demais linhas (se houver) ficam alinhadas após a palavra Fonte:.
% - introdução das opções de copyright: CCBY, CCBYSA, CCBYND e CCBYNCND (banon 2014-06-08)
% - correção do comando \keywords - agora as palavras-chave em Inglês (no Abstract) aparecem onde apareciam as palavras-chave em Português (banon 2014-03-20)
% - criação do comando \legenda para uso nas figuras (banon 2014-01-17)
% - adequação à norma ABNT 14724-2011 na questão das ilustrações - agora o título da figura fica acima da figura (banon 2014-01-17)
% - reposicionamento do comando \normalsize para retornar para normalsize depois da folha da ficha catalográfica (banon 2013-12-24)
% - inclusão do comando \nomepagina para a tradução automática Pág. / Page nas listas de figuras e tabelas, e no sumário (banon 2013-10-29)
% - exibição do copyright (termos de uso) quando @includeFC é false - útil com usa-se a opção PublicacaoArtigoOuRelatorio
%   e acerto no posicionamento do cutter da ficha catalográfica (banon 2013-10-07)
% - introdução do comando \usepackage{lmodern} para permitir o copiar/colar com acentuação no pdf (sugestão encaminhada por João Victor Cal Garcia (c4ll1b4n@gmail.com) e Cesar Strauss (cstrauss@cea.inpe.br) - implementada por banon em 2013-09-02)
% - remoção do comando \raggedright nas definições do comando \licenca para evitar a perda
%   da justificação no resto do texto (banon 2013-05-29)
% - introdução das opções de copyright: INPECopyright, CCBYNCSA e CCBYNC (banon 2013-05-22)
% - remoção do comando \hspace{2mm} em \titlerule*[0.82pc]{.}\hspace{2mm}\contentspage}
%   com isto o número das páginas, no sumário, dos Apêndices e Anexos com títulos de mais
%   de uma linha se mantêm alinhado a direita
% - adição de pacotes/opções para inclusão de figuras tanto em png, pdf, jpg, ps, eps, etc...
%   seguindo recomendação do Fabio Dall Cortivo (banon 2012-10-19)
% - adição do pacote \RequirePackage{float}	seguindo recomendação do Fabio Dall Cortivo (banon 2012-10-19)
% - redefinição das margens superior e inferior (passando de 3.5cm para 3cm) (banon 2011-12-06)
% - recolocação da @descriccao na segunda metade da mancha conforme norma ABNT de 2011 (banon 2011-12-06)
% - inclusão do comando \pagenumbering{roman} no início do comando \AtBeginDocument{}
%   de forma a usar estilo romano desde a capa porque MakeIndex supõe que a numeração romana precede arábica*
%   (não deve começar com arábica se continuar com romana; neste caso o MakeIndex se perde nas referências às
%   páginas arábicas de valores inferiores ao número máximo de páginas romanas)
%   * ver http://www.tex.ac.uk/tex-archive/indexing/makeindex/doc/makeindex.pdf p.6 (banon 2011-10-09)
% - \titlerule*[1pc]{.}\contentspage} ficou \titlerule*[0.82pc]{.}\hspace{2mm}\contentspage}
%   com isto o pontilhado no apêndice e no anexo ficou mais parecido com o resto do sumário (banon 2011-03-17)
% - opção a4paper foi removido das opções do pacote hyperref por não ser mais usada por este pacote (banon 2010-10-07)
% - introdução do comando \scriptsize na frente de \@repositorio-\@tipoDaPublicacao  na ficha catalográfica
%   para diminuir o comprimento da cadéia de caracteres de forma a couber numa só linha (banon 2010-08-31)
% - introdução da opcão LogoINPE, o uso dessa opção permite que o logo do INPE seja usado no lugar do logo do Governo (banon 2010-06-21)
% - introdução na capa e folha de rosto, do nome de repositório como número de serie (banon 2010-05-01)
% - criação do comando \tipoDaPublicacao
% - remoção do comando \serieinpe
% - modificação do valor de \ConselhoDeEditoracao (banon 2010-05-01)
% - modificação do valor de \avisoDeOriginal (banon 2010-05-01)
% - troca do valor FIGURE por Figure em \figurename (banon 2010-04-14)
% - troca do valor TABLE por Table em \tablename (banon 2010-04-14)
% - troca do nome de marcador de COAT por COVER (banon 2010-02-03)
% - inclusão da opção filecolor=bblue na chamada do pacote hyperref (banon 2009-11-10)
% - inclusão dos pacotes titlesec e titletoc para retirar o número (letra) dos Apêndices e Anexos (ainda permanece nos book marks)
%	usando os comandos \titleformat, \titlespacing e \titlecontents nos comandos \inicioApendice e \inicioAnexo
% - modificação do \FONTE com inclusão de comando \vspace para fazer subir o Fonte  (banon 2009-10-07)
% - modificação do \includeSumario com inclusão do comando \label{numeroDePáginasDoPretexto}
%   para fazer referência na ficha catalográfica número de páginas do pretexto (banon 2009-09-27)
% - modificação do \maketitle para usar estilo romano na paginação do pretexto,
%   do \pretexto para colocar paginação no pretexto,
%   do \inicioIntroducao para começar a contar em arábico na introdução,
%   do \abreviaturasesiglas para retirar a lista de abreviaturas e siglas do sumário,
%   do \simbolos para retirar a lista de símbolos do sumário,
%   do \cftafterloftitle para retirar List of Figures do sumário,
%   do \cftafterlottitle para retirar List of Tables do sumário (banon 2009-09-22)
% - correção tamanho do fonte de footnotesize para normalsize, para o corpo do documento (ver linha 855) (Banon)
% - inclusão na ficha catalográfica do orientador e colocação do cutter na frente do título (Banon e Viveca)
% - inclusão da versão em Inglês do verso da capa (Banon e Marinalva)
% - inserção do pacote textcase para poder manter algum trecho do título em minúsculo usando \NoCaseChange{}
% - novo fonte para a Título/Legenda de figuras - ver opções do pacote caption2 (Banon)
% - nova ficha catalográfica para teses e dissertações (Banon)
% - nova capa e nova ficha catalográfica + aviso de direitos autorais (Banon)
% - adoção do label referbiblio para citar a parte Referências Bibliográficas
% - inclusão do pacote amsthm
% - atualização do script execpub.sh
% - inclusão dos scripts latin2tex.sh e tex2latin.sh
% - inclusão do pacote subfigure
% - inclusão da função watermark para identificação de documentos 
% - espaçamento no itemize corrigido
% - correçao em \anexo, para ficar independente de haver ou não apêndice
% - PublicacaoProposta omite serieinpe
% - possibilidade de gerar docs em ps, dvi e html, além do PDF. (beta)
% - definido environment epicap para fazer epígrafes em capítulos
% - opcao de citacao: CitacaoNumerica, padrão é tipo autor-data
% - inserido os macros da ABNTeX para citação e referências segundo a ABNT     
% - inserção de facilidades para longtables (em landscape inclusive)
% - modificação no código da função \FONTE
% - tipos de doc: PublicacaoDissOuTese, PublicacaoArtigoOuRelatorio, PublicacaoProposta, PublicacaoLivro
% - criado ambiente citacao (= quote modificado)
% - sai citacao, entra epigrafe
% - azul mais escuro para os links
% - numeração de páginas totais automática na ficha catalográfica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% inicio da implementacao para dvi, html e pdf
%%% checa se usa o PDFLATEX
%\newif\ifpdf
%  \ifx\pdfoutput\undefined
%      \pdffalse
%  \else
%      \pdfoutput=1
%      \pdftrue
% \fi

\usepackage{ifpdf} 

%%% Checa se foi chamado o comando htlatex para gerar documento em html
\newif\ifHTML
  \ifx\HCode\undefined
      \HTMLfalse\typeout{===================tex4ht-false}
  \else
      \HTMLtrue\typeout{===================tex4ht-true}
 \fi

%%%%%%%%%% Classe base
\LoadClass[12pt,twoside,onecolumn,openright,a4paper]{report} %% essencial

\RequirePackage{titlesec}% needed for \titleformat and \titlespacing - acrescentado por gjfb em 2009-10-11
\RequirePackage{titletoc}% needed for \titlecontents - acrescentado por gjfb em 2009-10-11

\RequirePackage[overload]{textcase} %% para poder deixar algum texto em minúscula no título usando \NoCaseChange{}
\RequirePackage{ifthen} %% essencial %% operador de condicionais
\RequirePackage{calc} %% essencial %% operações matemáticas

%\RequirePackage{graphicx} %% essencial %% para inserir figuras - comentado por gjfb em 2012-10-19 para tornar tdiinpe mais geral usando o código logo abaixo
\ifpdf
  \RequirePackage[pdftex]{graphicx} %% essencial %% para inserir figuras
  \RequirePackage[pdftex]{graphics}
\else
  \RequirePackage{epic,eepic}
  \RequirePackage[dvips]{epsfig}
  \RequirePackage[dvips]{graphics}
  \RequirePackage[dvips]{graphicx}
% Os tres pacotes abaixo sao necessarios para a inclusao de figuras (codigos) utilizando o LatexDraw
% informacoes em: http://latexdraw.sourceforge.net/
  \RequirePackage[usenames,dvipsnames]{pstricks}
  \RequirePackage{pst-grad} % For gradients
  \RequirePackage{pst-plot} % For axes
\fi

\RequirePackage{color} %% essencial %% aplicar cores no texto
%\RequirePackage[latin1]{inputenc} %% essencial

\RequirePackage{float}	%% acrescentado por gjfb em 2012-10-19 seguindo recomendação do Fabio Dall Cortivo

\RequirePackage{babel} %% essencial %% docs em vários idiomas

\RequirePackage{hyphenat} %% essencial %% hifenização
\RequirePackage{array} %% essencial %% variante para arranjos e tabelas 
\RequirePackage{setspace} %% essencial %% define espaços entre linhas no texto
\RequirePackage{bigdelim} %% essencial %% para uso de tabelas
\RequirePackage{multirow} %% essencial %% para uso de tabelas
\RequirePackage{supertabular} %% essencial %% para uso de tabelas
\RequirePackage{tabularx} %% essencial %% para uso de tabelas
\RequirePackage{longtable} %% essencial %% para uso de tabelas
\RequirePackage{lastpage} %% cuidado com o uso do endfloat %% dá o num. de pág. total do doc.
\RequirePackage{lscape} %% essencial %% página em orientação paisagem (landscape)
\RequirePackage{rotate} %% essencial %% roda floats (figuras, tabelas)
%% \RequirePackage[hang,sf,bf,footnotesize]{caption2} %% ABNT %% essencial
%% variação: \RequirePackage[hang]{caption2}
\RequirePackage[hang,small]{caption2}
\RequirePackage{amsmath,amssymb,amsthm} %% essencial %% para linguagem matemática

\RequirePackage{subfigure} %% essencial %% fazer subfiguras
\RequirePackage[subfigure]{tocloft} %% faz sumários e listas - needed for \cftchapindent
\RequirePackage{makeidx} %% essencial %% faz o ÍNDICE
\RequirePackage{eso-pic}
\newif\ifcalligra
\IfFileExists{calligra.sty} %% carrega fonte estilo caligráfico, se houver
{\RequirePackage{calligra} \calligratrue}{\calligrafalse}

%% opcoes de cores
%% linkcolor=blue,citecolor=gray,urlcolor=cyan
\definecolor{gray}{rgb}{0.4,0.4,0.4}
%\definecolor{bblue}{rgb}{0,0,.8} %% tom azul mais escuro
\definecolor{bblue}{rgb}{0,0,.4} %% tom azul mais escuro

%% Ativa bibliografia explicita (abnt-verbatim-entry) no formato bibtex
%% incompatível com o backref.sty por enquanto (ou um ou outro)
\gdef\@ativapbr{true} %% true or false : ativa pagebackref
\ifHTML\gdef\@ativapbr{false}\fi
%\RequirePackage[debug,a4paper,pagebackref=\@ativapbr,breaklinks,bookmarksopen=true,colorlinks=true,linkcolor=bblue,citecolor=bblue,urlcolor=bblue,filecolor=bblue,bookmarksnumbered=true,hyperindex=true,verbose=true]{hyperref} %% essential %% gera pdf/dvi com links
\RequirePackage[debug,pagebackref=\@ativapbr,breaklinks,bookmarksopen=true,colorlinks=true,linkcolor=bblue,citecolor=bblue,urlcolor=bblue,filecolor=bblue,bookmarksnumbered=true,hyperindex=true,verbose=true]{hyperref} %% essential %% gera pdf/dvi com links	% opção a4paper retirada em 2010-10-07 por gjfb por não ser mais usada pelo pacote hyperref

\ifpdf
  \RequirePackage{ae} %% essencial %% fontes para pdf
\else
  \RequirePackage[T1]{fontenc}
\fi

\usepackage{lmodern}	% permite o copiar/colar com acentuação a partir do pdf

\DeclareOption*{} %% para tirar warnings de options passadas pela classe tdiinpe para report

\DeclareOption{SemImagens}{
	\typeout{-------------->Opcao: SemImagens}
	\Gin@drafttrue
}

\DeclareOption{SemVinculoColorido}{%
	\typeout{-------------->Opcao: SemVinculoColorido}
	\def\@linkcolor{black}
	\def\@anchorcolor{black}
	\def\@citecolor{black}
	\def\@urlcolor{black}
}

%%% default for this documentclass = Tese ou Dissertação

\gdef\@docSemFormatacaoCapitulo{true}
\gdef\@includeFCNotasOrientadorTD{true}
\gdef\@includeFC{true}
\gdef\@includeFA{true}

\gdef\@INPECopyright{false}	% acrescentado por gjfb em 2013-05-22
\gdef\@CCBY{false}	% acrescentado por gjfb em 2014-06-08
\gdef\@CCBYSA{false}	% acrescentado por gjfb em 2014-06-08
\gdef\@CCBYND{false}	% acrescentado por gjfb em 2014-06-08
\gdef\@CCBYNC{false}	% acrescentado por gjfb em 2013-05-22
\gdef\@CCBYNCSA{false}	% acrescentado por gjfb em 2013-05-22
\gdef\@CCBYNCND{false}	% acrescentado por gjfb em 2014-06-08
\gdef\@GPLv3{false}	% acrescentado por gjfb em 2015-06-10

\gdef\@folhaembranco{true}
\gdef\@tipocitacao{alf}
\gdef\@printserieinpe{true}
\gdef\@logoinpe{false}	% acrescentado por gjfb em 2010-06-21 - default is LogoGoverno

\DeclareOption{PublicacaoDissOuTese}{%
	\typeout{-------------->Opcao: PublicacaoDissOuTese}
% see default above
}

\DeclareOption{PublicacaoArtigoOuRelatorio}{%
	\typeout{-------------->Opcao: PublicacaoArtigoOuRelatorio}
	\gdef\@includeFCNotasOrientadorTD{false}
	\gdef\@includeFC{false}
	\gdef\@includeFA{false}
	\gdef\@folhaembranco{false}
	\gdef\@docSemFormatacaoCapitulo{true}
	\let\include\input
}

\DeclareOption{PublicacaoProposta}{%
	\typeout{-------------->Opcao: PublicacaoProposta}
	\gdef\@includeFCNotasOrientadorTD{false}
	\gdef\@includeFC{false}
	\gdef\@includeFA{false}
	\gdef\@folhaembranco{true}
	\gdef\@printserieinpe{false}
	\gdef\@docSemFormatacaoCapitulo{true}  
}

\DeclareOption{PublicacaoLivro}{%
	\typeout{-------------->Opcao: PublicacaoLivro}
	\gdef\@includeFCNotasOrientadorTD{false}
	\gdef\@includeFC{true}
	\gdef\@includeFA{false}
	\gdef\@folhaembranco{true}
	\gdef\@docSemFormatacaoCapitulo{false}	% com capítulo  
}

\DeclareOption{SemFormatacaoCapitulo}{%
	\typeout{-------------->Opcao: SemFormatacaoCapitulo}
	\gdef\@docSemFormatacaoCapitulo{true}
}

\DeclareOption{SemFolhaAprovacao}{%
	\typeout{-------------->Opcao: SemFolhaAprovacao}
	\gdef\@includeFA{false}
}

\DeclareOption{INPECopyright}{%
	\typeout{-------------->Opcao: INPECopyright}
	\gdef\@INPECopyright{true}
}

\DeclareOption{CCBY}{%
	\typeout{-------------->Opcao: CCBY}
	\gdef\@CCBY{true}
}

\DeclareOption{CCBYSA}{%
	\typeout{-------------->Opcao: CCBYSA}
	\gdef\@CCBYSA{true}
}

\DeclareOption{CCBYND}{%
	\typeout{-------------->Opcao: CCBYND}
	\gdef\@CCBYND{true}
}

\DeclareOption{CCBYNC}{%
	\typeout{-------------->Opcao: CCBYNC}
	\gdef\@CCBYNC{true}
}

\DeclareOption{CCBYNCSA}{%
	\typeout{-------------->Opcao: CCBYNCSA}
	\gdef\@CCBYNCSA{true}
}

\DeclareOption{CCBYNCND}{%
	\typeout{-------------->Opcao: CCBYNCND}
	\gdef\@CCBYNCND{true}
}

\DeclareOption{GPLv3}{%
	\typeout{-------------->Opcao: GPLv3}
	\gdef\@GPLv3{true}
}

\DeclareOption{CitacaoNumerica}{%
	\typeout{-------------->Opcao: CitacaoNumerica}
	\gdef\@tipocitacao{num}
}

\DeclareOption{LogoINPE}{% acrescentado por gjfb em 2010-06-21
	\typeout{-------------->Opcao: LogoINPE}
	\gdef\@logoinpe{true}
}

\ProcessOptions

%%% Pacote da ABNTeX para referências dentro das normas %%%
\gdef\@sepbr{no} %% yes ou no para pagebackref em abnt-verbatim-entry
\@ifpackageloaded{backref}{}{\gdef\@sepbr{yes}} %% backref não é compatível com abnt-verbatim-entry ainda
\ifHTML\gdef\@sepbr{no}
\gdef\@tipocitacao{num}
\else\fi
\usepackage[\@tipocitacao,abnt-emphasize=bf,abnt-etal-cite=2,abnt-etal-list=0,abnt-repeated-title-omit=yes,abnt-show-options=warn,abnt-verbatim-entry=\@sepbr,abnt-url-package=url]{conf/abntex2/abntcite}%testebib 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% configuracao das margens 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\normalsize

%\setlength{\paperheight}{29.7cm}
%\setlength{\paperwidth}{21cm}
%\setlength{\hoffset}{-1in}
%\setlength{\voffset}{-1in}
%\setlength{\oddsidemargin}{2.5cm}
%\setlength{\evensidemargin}{2.5cm}
%\setlength{\topmargin}{2.0cm}
%\newlength{\bottommargin}
%\setlength{\bottommargin}{3.0cm}
%\setlength{\headheight}{12pt}
%\setlength{\headsep}{12pt}
%\setlength{\footskip}{1.5cm} 
%\setlength{\textheight}{24cm}
%\setlength{\textwidth}{16cm}

%%% usa o package geometry para definir as dimensões do documento
%\RequirePackage[a4paper,left=3.0cm,right=3.0cm,%
%top=3.5cm,bottom=3.5cm]{geometry}	% comentado por gjfb em 2011-12-06

\RequirePackage[a4paper,left=3.0cm,right=3.0cm,%
top=3cm,bottom=3cm]{geometry}	% acrescentado por gjfb em 2011-12-06

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength{\linha}
\newlength{\baselsdefault}
\newlength{\parsdefault}
\newlength{\baselsinpe}
\newlength{\parsinpe}

\setlength{\linha}{12pt} %! o mesmo valor passado para a classe report
\setlength{\baselsdefault}{\baselineskip}
\setlength{\parsdefault}{\parskip}
\setlength{\baselsinpe}{1.5\linha} %% distancia entre linhas
\setlength{\parsinpe}{\linha}%  distancia a mais entre paragrafos

%setspace
\AtBeginDocument{\setlength{\baselineskip}{\baselsinpe}}
\onehalfspacing
\AtBeginDocument{\setlength{\parskip}{\parsinpe}}
\setlength{\parindent}{0pt}
\frenchspacing %Não põe um espaco adicional após ponto final.
\sloppy %força que todas as linhas fiquem dentro das margens.

%footnoterule 	
\renewcommand{\footnoterule}{\vspace*{-3pt}%
	\rule{3cm}{0.4pt}\vspace*{2.6pt}%
}

% - Define contadores e quais serao numerados:
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}
% limites para o posicionamento de objetos flutuantes
\setcounter{topnumber}{3}
%\renewcommand{\topfraction}{1.0}
\renewcommand{\topfraction}{0.85}
\setcounter{bottomnumber}{2}
%\renewcommand{\bottomfraction}{1.0}
\renewcommand{\bottomfraction}{0.65}
\setcounter{totalnumber}{5}
%\renewcommand{\textfraction}{0.3}
%\renewcommand{\floatpagefraction}{0.4}
\renewcommand{\textfraction}{0.15}
\renewcommand{\floatpagefraction}{0.60}

% Distancias entre objetos flutuantes e texto:
\setlength{\floatsep}{\baselsinpe}\addtolength{\floatsep}{\parsinpe}
\setlength{\textfloatsep}{\parsinpe}\addtolength{\textfloatsep}{2\parsinpe}
\setlength{\intextsep}{\baselsinpe}\addtolength{\intextsep}{\parsinpe}

% - Parametros gerais.
\newlength{\seistoques}
\newlength{\lrotulo}
\newlength{\sepitem}
\settowidth{\seistoques}{\ \ \ \ \ \ }
\settowidth{\lrotulo}{xx}
\setlength{\sepitem}{0.5em}
\setlength{\leftmargini}{\seistoques+2\lrotulo}
\setlength{\leftmarginii}{2\lrotulo}
\setlength{\leftmarginiii}{2\lrotulo}
\setlength{\labelsep}{\sepitem}
\setlength{\labelwidth}{\lrotulo}
\setlength{\partopsep}{0pt}
\setlength{\topsep}{0pt}
\setlength{\rightmargin}{0pt}
\setlength{\itemindent}{0pt}
\setlength{\listparindent}{0pt}
\setlength{\parsep}{0pt}
\setlength{\itemsep}{10pt}
\setlength{\LTcapwidth}{\textwidth}

% - Listas enumeradas:
\renewcommand{\theenumi}{\alph{enumi}}
%\renewcommand{\theenumii}{\arabic{enumii}}
\renewcommand{\theenumii}{\bfseries--}
%\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\labelenumi}{\theenumi)}
\renewcommand{\labelenumii}{\theenumii}
%\renewcommand{\labelenumiii}{\theenumiii}

%%%%%%%% Variaveis, dependem de idiomas
\ifthenelse{\equal{\languagename}{brazilian} 
				\or \equal{\languagename}{brazil} 
				\or \equal{\languagename}{portuguese}}{
\AtBeginDocument{
\newcommand{\nomecapa}{CAPA}
\newcommand{\nomeversocapa}{VERSO}
\newcommand{\nomefolhaderosto}{FOLHA DE ROSTO}
\newcommand{\nomeabstract}{ABSTRACT}%
\newcommand{\nomeresumo}{RESUMO}%
\newcommand{\nomekeywords}{Keywords}%
\newcommand{\nomepalavraschave}{Palavras-chave}%
\newcommand{\nomeepigrafe}{EPÍGRAFE}%
\newcommand{\nomededicatoria}{DEDICATÓRIA}%
\newcommand{\nomethank}{AGRADECIMENTOS}%
\newcommand{\nomeglossarios}{GLOSSÁRIO}
\newcommand{\nomeabreviaturasesiglas}{LISTA DE ABREVIATURAS E SIGLAS}
\newcommand{\nomefichacatalografica}{FICHA CATALOGRÁFICA}
\newcommand{\termosdeuso}{TERMOS DE USO}	% acrescentado por gjfb em 2013-10-07
\newcommand{\nomefolhadeaprovacao}{FOLHA DE APROVAÇÃO}
\renewcommand{\refname}{REFERÊNCIAS BIBLIOGRÁFICAS}
\renewcommand{\figurename}{Figura}% %awss
\renewcommand{\tablename}{Tabela}% %awss
\renewcommand{\indexname}{ÍNDICE}%
\newcommand{\nomecontracapa}{CONTRACAPA}%
\renewcommand{\appendixname}{APÊNDICE}
\renewcommand{\contentsname}{SUMÁRIO} %awss
\newcommand{\nomepagina}{Pág.} % gjfb
\renewcommand{\listtablename}{LISTA DE TABELAS} %awss
\renewcommand{\listfigurename}{LISTA DE FIGURAS} %awss
\newcommand{\nomeanexo}{ANEXO}
\newcommand\anexoautorefname{Anexo}%
\newcommand{\listsimbname}{LISTA DE SÍMBOLOS}
\newcommand{\FONTEname}{Fonte}
%\newcommand{\avisoDeOriginal}{Registro do documento original:}	% comentado por gjfb em 2010-05-01
\newcommand{\avisoDeOriginal}{URL do documento original:}	% acrescentado por gjfb em 2010-05-01
\newcommand{\cardCaption}{Dados Internacionais de Catalogação na Publicação (CIP)}
\newcommand{\PublicadoPor}{Publicado por}
%\newcommand{\ConselhoDeEditoracao}{CONSELHO DE EDITORAÇÃO}	% comentado por gjfb em 2010-05-01
%\newcommand{\ConselhoDeEditoracao}{CONSELHO DE EDITORAÇÃO E PRESERVAÇÃO DA PRODUÇÃO INTELECTUAL DO INPE (RE/DIR-204)}	% acrescentado por gjfb em 2010-05-01
%\newcommand{\ConselhoDeEditoracao}{COMISSÃO DO CONSELHO DE EDITORAÇÃO E PRESERVAÇÃO DA PRODUÇÃO INTELECTUAL DO INPE (DE/DIR-544)}	% acrescentado por cmp em 2015-01-29
\newcommand{\ConselhoDeEditoracao}{CONSELHO DE EDITORAÇÃO E PRESERVAÇÃO DA PRODUÇÃO INTELECTUAL DO INPE - CEPPII (PORTARIA Nº 176/2018/SEI-INPE)}	% acrescentado por aldf em 2019-04-02
\newcommand{\Presidente}{Presidente}
\newcommand{\Membros}{Membros}
\newcommand{\BibliotecaDigital}{BIBLIOTECA DIGITAL}
\newcommand{\RevisaoNormalizacaoDocumentaria}{REVISÃO E NORMALIZAÇÃO DOCUMENTÁRIA}
\newcommand{\EditoracaoEletronica}{EDITORAÇÃO ELETRÔNICA}
}}{
%%% English definitions %%%
\AtBeginDocument{
%\newcommand{\nomecapa}{COAT}	% comentado por gjfb em 2010-02-03
\newcommand{\nomecapa}{COVER}	% acrescentado por gjfb em 2010-02-03
\newcommand{\nomeversocapa}{VERSUS}
\newcommand{\nomefolhaderosto}{TITLE PAGE}
\newcommand{\nomeabstract}{RESUMO}%
\newcommand{\nomeresumo}{ABSTRACT}%
\newcommand{\nomekeywords}{Palavras-chave}%
\newcommand{\nomepalavraschave}{Keywords}%
\newcommand{\nomeepigrafe}{EPIGRAPHY}%
\newcommand{\nomededicatoria}{DEDICATORY}%
\newcommand{\nomethank}{ACKNOWLEDGEMENTS}
\newcommand{\nomeglossarios}{GLOSSARY}
\newcommand{\nomeabreviaturasesiglas}{LIST OF ABBREVIATIONS}
\newcommand{\nomefichacatalografica}{INDEX CARD}
\newcommand{\termosdeuso}{TERMS OF USE}	% acrescentado por gjfb em 2013-10-07
\newcommand{\nomefolhadeaprovacao}{APPROVAL TERM}
\renewcommand{\refname}{REFERENCES}
%\renewcommand{\figurename}{FIGURE}% %awss
%\renewcommand{\tablename}{TABLE}% %awss
\renewcommand{\figurename}{Figure}	% acrescentado por gjfb em 2010-04-14
\renewcommand{\tablename}{Table}	% acrescentado por gjfb em 2010-04-14
\renewcommand{\indexname}{INDEX}%
%\newcommand{\overcoatname}{OVERCOAT}	% comentado por gjfb em 2010-02-03
\renewcommand{\appendixname}{APPENDIX}
\renewcommand{\contentsname}{CONTENTS} %awss
\newcommand{\nomepagina}{Page} % gjfb
\renewcommand{\listtablename}{LIST OF TABLES} %awss
\renewcommand{\listfigurename}{LIST OF FIGURES} %awss
\newcommand{\nomeanexo}{ANNEX}
\newcommand\anexoautorefname{annex}%
\newcommand{\listsimbname}{LIST OF SYMBOLS}
\newcommand{\FONTEname}{SOURCE}
%\newcommand{\avisoDeOriginal}{Original document registry:}	% comentado por gjfb em 2010-05-01
\newcommand{\avisoDeOriginal}{URL of the original document:}	% acrescentado por gjfb em 2010-05-01
\newcommand{\cardCaption}{Cataloging in Publication Data}
\newcommand{\PublicadoPor}{Published by}
%\newcommand{\ConselhoDeEditoracao}{EDITORIAL COMMITTEE}	% comentado por gjfb em 2010-05-01
%\newcommand{\ConselhoDeEditoracao}{BOARD OF PUBLISHING AND PRESERVATION OF INPE INTELLECTUAL PRODUCTION (RE/DIR-204)}	% acrescentado por gjfb em 2010-05-01
%\newcommand{\ConselhoDeEditoracao}{COMMISSION OF BOARD OF PUBLISHING AND PRESERVATION OF INPE INTELLECTUAL PRODUCTION (DE/DIR-544)}	% acrescentado por cmp em 2015-01-29
\newcommand{\ConselhoDeEditoracao}{BOARD OF PUBLISHING AND PRESERVATION OF INPE INTELLECTUAL PRODUCTION - CEPPII (PORTARIA Nº 176/2018/SEI-INPE)}	% acrescentado por aldf em 2019-04-02 
\newcommand{\Presidente}{Chairperson}
\newcommand{\Membros}{Members}
\newcommand{\BibliotecaDigital}{DIGITAL LIBRARY}
\newcommand{\RevisaoNormalizacaoDocumentaria}{DOCUMENT REVIEW}
\newcommand{\EditoracaoEletronica}{ELECTRONIC EDITING}
}
}

% se mais de uma opção de copyright, então prevalece a mais restritiva
\ifthenelse{\equal{\@INPECopyright}{true}}{%
% INPE copyright
	\newcommand{\licenca}{Copyright \copyright\ \@date\ do MCTI/INPE.
	Nenhuma parte desta publicação pode ser reproduzida, armazenada em um sistema de recuperação,
	ou transmitida sob qualquer forma ou por qualquer meio, eletrônico, mecânico,
	fotográfico, reprográfico, de microfilmagem ou outros, sem a permissão
	escrita do INPE, com exceção de qualquer material
	fornecido especificamente com o propósito de ser entrado e executado
	num sistema computacional, para o uso exclusivo do leitor da obra.}
	
	\newcommand{\license}{Copyright \copyright\ \@date\ by MCTI/INPE.
	No part of this publication may be reproduced, stored in a retrieval system,
	or transmitted in any form or by any means, electronic, mechanical,
	photocopying, recording, microfilming, or otherwise, without written
	permission from INPE, with the exception of any material
	supplied specifically for the purpose of being entered and executed
	on a computer system, for exclusive use of the reader of the work.}
}{
% Creative Commons
	\ifthenelse{\equal{\@CCBY}{true}}{%
% CC-BY
		\newcommand{\licenca}{\href{http://creativecommons.org/licenses/by/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBY.png}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by/3.0/deed.pt_BR}{Creative Commons Atribuição 3.0 Não Adaptada}.}	% adicionado por gjfb em 2014-06-08
		\newcommand{\license}{This work is licensed under a \href{http://creativecommons.org/licenses/by/3.0/}{Creative Commons Attribution 3.0 Unported} License.}
	}{
		\ifthenelse{\equal{\@CCBYSA}{true}}{%
% CC-BY-SA
			\newcommand{\licenca}{\href{http://creativecommons.org/licenses/by-sa/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYSA.png}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nc-sa/3.0/deed.pt_BR}{Creative Commons Atribuição-CompartilhaIgual 3.0 Não Adaptada}.}	% adicionado por gjfb em 2014-06-08
			\newcommand{\license}{This work is licensed under a \href{http://creativecommons.org/licenses/by-sa/3.0/}{Creative Commons Attribution-ShareAlike 3.0 Unported} License.}
		}{
			\ifthenelse{\equal{\@CCBYND}{true}}{%
% CC-BY-ND
				\newcommand{\licenca}{\href{http://creativecommons.org/licenses/by-nd/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYND.png}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nd/3.0/deed.pt_BR}{Creative Commons Atribuição-SemDerivações 3.0 Não Adaptada}.}	% adicionado por gjfb em 2014-06-08
				\newcommand{\license}{This work is licensed under a \href{http://creativecommons.org/licenses/by-nd/3.0/}{Creative Commons Attribution-NoDerivs 3.0 Unported} License.}
			}{
				\ifthenelse{\equal{\@CCBYNC}{true}}{%
% CC-BY-NC
%					\newcommand{\licenca}{\raggedright{\href{http://creativecommons.org/licenses/by-nc/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYNC.png}}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nc/3.0/deed.pt_BR}{Creative Commons Atribuição-NãoComercial 3.0 Não Adaptada}.}	% comentado por gjfb em 2013-05-29 - todo resto do texto deixa de ser justificado
					\newcommand{\licenca}{\href{http://creativecommons.org/licenses/by-nc/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYNC.png}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nc/3.0/deed.pt_BR}{Creative Commons Atribuição-NãoComercial 3.0 Não Adaptada}.}	% adicionado por gjfb em 2013-05-29
					\newcommand{\license}{This work is licensed under a \href{http://creativecommons.org/licenses/by-nc/3.0/}{Creative Commons Attribution-NonCommercial 3.0 Unported} License.}
				}{
					\ifthenelse{\equal{\@CCBYNCSA}{true}}{%
% CC-BY-NC-SA
%						\newcommand{\licenca}{\raggedright{\href{http://creativecommons.org/licenses/by-nc-sa/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYNCSA.png}}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nc-sa/3.0/deed.pt_BR}{Creative Commons Atribuição-NãoComercial-CompartilhaIgual 3.0 Não Adaptada}.}	% comentado por gjfb em 2013-05-29 - todo resto do texto deixa de ser justificado
						\newcommand{\licenca}{\href{http://creativecommons.org/licenses/by-nc-sa/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYNCSA.png}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nc-sa/3.0/deed.pt_BR}{Creative Commons Atribuição-NãoComercial-CompartilhaIgual 3.0 Não Adaptada}.}	% adicionado por gjfb em 2013-05-29
						\newcommand{\license}{This work is licensed under a \href{http://creativecommons.org/licenses/by-nc-sa/3.0/}{Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported} License.}
					}{
						\ifthenelse{\equal{\@CCBYNCND}{true}}{%
% CC-BY-NC-ND
							\newcommand{\licenca}{\href{http://creativecommons.org/licenses/by-nc-nd/3.0/}{\includegraphics[width=2cm]{conf/figs/CCBYNCND.png}}\par Esta obra foi licenciada sob uma Licença \href{http://creativecommons.org/licenses/by-nc-nd/3.0/deed.pt_BR}{Creative Commons Atribuição-NãoComercial-SemDerivações 3.0 Não Adaptada}.}	% adicionado por gjfb em 2014-06-08
							\newcommand{\license}{This work is licensed under a \href{http://creativecommons.org/licenses/by-nc-nd/3.0/}{Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported} License.}
		
						}{
							\ifthenelse{\equal{\@GPLv3}{true}}{%
% GPLv3
% GPLv3.png deve ser uma cópia de: https://gnu.org/graphics/gplv3-88x31.png
								\newcommand{\licenca}{\href{https://gnu.org/licenses/gpl-3.0.en.html}{\includegraphics[width=2cm]{conf/figs/GPLv3.pdf}}\par Esta obra foi licenciada sob uma Licença \href{https://gnu.org/licenses/gpl-3.0.en.html}{GNU General Public License - Versão 3}.}	% adicionado por gjfb em 2015-06-10
								\newcommand{\license}{This work is licensed under a \href{https://gnu.org/licenses/gpl-3.0.en.html}{GNU General Public License - Version 3}.}
		
							}{
% no license
								\newcommand{\licenca}{}
								\newcommand{\license}{}
							}
						}
					}
				}
			}
		}
	}
}

%%% define estilo de numeracao geral no documento
%plain (centro em baixo) %headings(superior fora com titulos) %myheadings (so num sup fora) %empty 
\newcommand{\estilonum}{plain} %% ABNT myheadings
	\markboth{}{}

\renewcommand{\chapter}{
	\ifthenelse{\equal{\@folhaembranco}{true}}{
		\if@openright\cleardoublepage\else\clearpage\fi %% faz capitulo começar em folha impar (coloca folha em branco)
	}{\vspace{\baselsinpe}}
	\thispagestyle{\estilonum} %% define estilo de num. na pag. das partes 
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
\renewcommand\part{%
	\ifthenelse{\equal{\@folhaembranco}{true}}{
  \if@openright\cleardoublepage\else\clearpage\fi%
	}{}
  \thispagestyle{empty}%
  \if@twocolumn\onecolumn\@tempswatrue\else\@tempswafalse\fi%
  \null\vfil\secdef\@part\@spart}%
  
\newcommand*{\titulo}[1]{\gdef\@titulo{#1}}
\newcommand*{\descriccao}[1]{\gdef\@descriccao{#1}}

\newcommand*{\repositorio}[1]{\gdef\@repositorio{#1}}
\newcommand*{\tipoDaPublicacao}[1]{\gdef\@tipoDaPublicacao{#1}}	% acrescentado por gjfb em 2010-05-01
\newcommand*{\IBI}[1]{\gdef\@IBI{#1}}	% acrescentado por gjfb em 2010-05-01

% \newcommand*{\serieinpe}[1]{\gdef\@serieinpe{#1}}	% comentado por gjfb em 2010-05-01
\newcommand*{\email}[1]{\gdef\@email{#1}}
\newcommand*{\instituicao}[1]{\gdef\@instituicao{#1}}
\newcommand*{\instituicaol}[1]{\gdef\@instituicaol{#1}}
\newcommand*{\instituicaosigla}[1]{\gdef\@instituicaosigla{#1}}
\newcommand*{\instituicaocidade}[1]{\gdef\@instituicaocidade{#1}}

\newcommand*{\tituloverso}[1]{\gdef\@tituloverso{#1}}
\newcommand*{\descriccaoverso}[1]{\gdef\@descriccaoverso{#1}}
\newcommand*{\descriccaoversoA}[1]{\gdef\@descriccaoversoA{#1}}

% FICHA

\newcommand*{\cutterFICHAC}[1]{\gdef\@cutterFICHAC{#1}}
\newcommand*{\autorUltimoNomeFICHAC}[1]{\gdef\@autorUltimoNomeFICHAC{#1}}
\newcommand*{\autorAbreviadoFICHAC}[1]{\gdef\@autorAbreviadoFICHAC{#1}}	% não usado nesse .cls
\newcommand*{\autorFICHAC}[1]{\gdef\@autorFICHAC{#1}}	% acrescentado por gjfb em 2015-11-16
\newcommand*{\tituloFICHAC}[1]{\gdef\@tituloFICHAC{#1}}
\newcommand*{\paginasFICHAC}[1]{\gdef\@paginasFICHAC{#1}}
\newcommand*{\numeroFICHAC}[1]{\gdef\@numeroFICHAC{#1}}
\newcommand*{\palavraschaveFICHAC}[1]{\gdef\@palavraschaveFICHAC{#1}}
\newcommand*{\numeroCDUFICHAC}[1]{\gdef\@numeroCDUFICHAC{#1}}
\newcommand*{\nomeAtributoOrientadorFICHAC}[1]{\gdef\@nomeAtributoOrientadorFICHAC{#1}}
\newcommand*{\valorAtributoOrientadorFICHAC}[1]{\gdef\@valorAtributoOrientadorFICHAC{#1}}

% Nota da ficha (para TD)

\newcommand*{\tipoTD}[1]{\gdef\@tipoTD{#1}}
\newcommand*{\instituicaoDefesa}[1]{\gdef\@instituicaoDefesa{#1}}
\newcommand*{\anoDefesa}[1]{\gdef\@anoDefesa{#1}}

% FICHA - fim

\newcommand*{\marcaRegistrada}[1]{\gdef\@marcaRegistrada{#1}}	% acrescentado por gjfb em 2014-10-07
\newcommand*{\financiamento}[1]{\gdef\@financiamento{#1}}	% acrescentado por gjfb em 2018-09-21

\newcommand*{\tituloFA}[1]{\gdef\@tituloFA{#1}}
\newcommand*{\cursoFA}[1]{\gdef\@cursoFA{#1}}
\newcommand*{\candidatoOUcandidataFA}[1]{\gdef\@candidatoOUcandidataFA{#1}}
\newcommand*{\dataAprovacaoFA}[1]{\gdef\@dataAprovacaoFA{#1}}
\newcommand*{\membroA}[3]{\gdef\@membroA{#1}\gdef\@membroAP{#2}\gdef\@membroAPC{#3}}
\newcommand*{\membroB}[3]{\gdef\@membroB{#1}\gdef\@membroBP{#2}\gdef\@membroBPC{#3}}
\newcommand*{\membroC}[3]{\gdef\@membroC{#1}\gdef\@membroCP{#2}\gdef\@membroCPC{#3}}
\newcommand*{\membroD}[3]{\gdef\@membroD{#1}\gdef\@membroDP{#2}\gdef\@membroDPC{#3}}
\newcommand*{\membroE}[3]{\gdef\@membroE{#1}\gdef\@membroEP{#2}\gdef\@membroEPC{#3}}
\newcommand*{\membroF}[3]{\gdef\@membroF{#1}\gdef\@membroFP{#2}\gdef\@membroFPC{#3}}
\newcommand*{\membroG}[3]{\gdef\@membroG{#1}\gdef\@membroGP{#2}\gdef\@membroGPC{#3}}

\newcommand{\PBS}[1]{\let\temp=\\#1\let\\=\temp}


%%%%%%%%%% Novos comandos

%\renewcommand{\cite}[1]{\citep{#1}} %testebib

%%%%%%% tira num page de empty pages %%%%%%%%%%
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}
\let\cleardoublepage\clearemptydoublepage
%se nao ativo, comentar linhas acima e descomentar linhas abaixo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\newcommand{\clearemptydoublepage}{
%	\newpage{\pagestyle{empty}\cleardoublepage}}

\newcommand{\pretexto}{
	\ifthenelse{\equal{\@folhaembranco}{true}}{
  \clearemptydoublepage %% coloca folha em branco
	}{\vspace{\baselsinpe}}
%  \thispagestyle{empty}
  \thispagestyle{plain}% para colocar paginação no pretexto
}

%%%% Modified by AWSS 10/05/05 begin
%%% incluir Sumario
\newcommand{\includeSumario}{%
	\pagestyle{plain}% para colocar paginação no sumário
	\pretexto%
	
	{\pdfbookmark[0]{\contentsname}{contentsname}}
	
	\tableofcontents%

%	\addtocontents{toc}{\protect\thispagestyle{empty}}% retirar paginação na primeira página
	\label{numeroDePáginasDoPretexto}	% última página do sumário - usado na ficha catalográfica para indicar o número de páginas do pretexto - acrescentado por gjfb em 2009-09-27
	\pretexto}

%%% incluir Lista de Figuras sem page num no sumario
\newcommand{\includeListaFiguras}{%
%	\pagestyle{empty}
	\pagestyle{plain}% para colocar paginação na lista de figuras
	\refstepcounter{section}
	\pretexto%
	\listoffigures%
%	\addtocontents{lof}{\protect\thispagestyle{empty}}% retirar paginação na primeira página
	\pretexto}

%%% incluir Lista de Tabelas sem page num no sumario
\newcommand{\includeListaTabelas}{%
%	\pagestyle{empty}
	\pagestyle{plain}% para colocar paginação na lista de tabelas
	\refstepcounter{section}
	\pretexto%
	\listoftables%
%	\addtocontents{lot}{\protect\thispagestyle{empty}}% retirar paginação na primeira página
	\pretexto}
% end AWSS

%% CFB
\singlespacing
\newcommand{\listofexamples}{%
	\tcblistof[\chapter*]{exem}{LISTA DE EXEMPLOS%
	    \\[-1em]
        \hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries P\'{a}g.}}
}

\newcommand{\includeListaExemplos}{%
%	\pagestyle{empty}
	\pagestyle{plain}% para colocar paginação na lista de tabelas
	\refstepcounter{section}
	\pretexto%
	\listofexamples
	\pretexto}
%% CFB
%% CFB
\singlespacing
\newcommand{\listofexercicies}{%
	\tcblistof[\chapter*]{exam}{LISTA DE EXERCÍCIOS%
	    \\[-1em]
        \hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries P\'{a}g.}}
}

\newcommand{\includeListaExercicios}{%
%	\pagestyle{empty}
	\pagestyle{plain}% para colocar paginação na lista de tabelas
	\refstepcounter{section}
	\pretexto%
	\listofexercicies
	\pretexto}
%% CFB

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% define variaveis do caption %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% delimita label do texto no caption, respeitar o espaco
\renewcommand{\captionlabeldelim}{ -} 
%% estilo da fonte do texto no caption, baseado no \captionlabelfont sem negrito
\renewcommand{\captionfont}{\captionlabelfont\mdseries\captionsize} 

%% variaveis temporarias para o comando \FONTE a partir do caption
\newlength{\tempbox}
\newlength{\tempboxA}
\newlength{\tempboxB}
\newlength{\tempboxC}
\newlength{\tempboxD}
\newlength{\tempboxCalc}

\renewcommand\@makecaption[2]{%
  \vskip\abovecaptionskip
  \captionlinewidth\hsize
%  \realcaptionwidth\hsize
  \def\captionlabel{#1}%
  \def\captiontext{#2}%
	\usecaptionstyle{\caption@style}%
  \vskip\belowcaptionskip
%%% label exato do caption respeitando o estilo, incluindo *espaco* depois do delimitador
%%% -> vai gerar o tamanho correto.
	\gdef\tamlabel{\captionlabelfont\captionsize#1\captionlabeldelim\captionfont\space}%%by AWSS
%%% texto exato do caption respeitando o estilo (sem negrito)
	\gdef\tamtexto{\captionfont#2}%%by AWSS
%\typeout{-------------------------------------------------------------------------\@captype}
}

%%% Comando \legenda por gjfb em 2014-01-17
\newlength{\legenda@width}
\newcommand{\legenda}[1]{%
	\gdef\@legenda{#1}
	\settowidth{\legenda@width}{\@legenda}
	\ifthenelse{\legenda@width < \textwidth}{%
		\begin{center}
			\small\@legenda
		\end{center}
	}{
		\small\@legenda
	}
	\gdef\tamtextolegenda{\captionfont#1}
}
%%% Comando \legenda por gjfb em 2014-01-17 - fim

%%% estilo de paragrafo especial para o \FONTE com margem adequada a partir do caption
\def\tamfonte{\captionfont{\FONTEname: }}  %% observe o espaco, Ž:Ž eh o separador
%%% comando \FONTE

\ifHTML
	\newcommand{\FONTE}[1]{\tamfonte\captionfont#1}
\else
	\newcommand{\FONTE}[1]{%
		\@ifundefined{@captype}{
			\ifthenelse{\tempboxCalc = 0}{
				\settowidth{\tempboxC}{\tamfonte}
				\addtolength{\tempboxCalc}{\tempboxC}
			}
			{\setlength{\tempboxC}{0pt}}
			\begin{list}{\tamfonte}{\leftmargin \tempboxCalc \rightmargin 0pt \labelsep 0pt \labelwidth \tempboxC}
				\item \captionfont#1
			\end{list}
			\setlength{\tempboxC}{0pt}
			\setlength{\tempboxCalc}{0pt}
		}{
			\ifthenelse{\equal{\@captype}{table}}{% table - acrescentado por gjfb em 2014-07-23
				\sbox{\tempbox}{\tamlabel}\setlength{\tempboxA}{\wd\tempbox}
				%\typeout{-------------------------------------------------------A\the\tempboxA}
				\sbox{\tempbox}{\tamtexto}\setlength{\tempboxB}{\wd\tempbox}
				%\typeout{-------------------------------------------------------B\the\tempboxB}
				\setlength{\tempboxCalc}{\linewidth}
				%\typeout{------------------------------------------------------ L\the\tempboxCalc}
				\addtolength{\tempboxCalc}{-\tempboxA}
				%\typeout{------------------------------------------------------ -A\the\tempboxCalc}
				\addtolength{\tempboxCalc}{-\tempboxB}
				%\typeout{------------------------------------------------------ -B\the\tempboxCalc}
				\ifthenelse{\tempboxCalc < 0}{%
					\setlength{\tempboxCalc}{\tempboxA}
				}{%
					\setlength{\tempboxCalc}{\tempboxCalc/2 + \tempboxA}
					%\typeout{------------------------------------------------------ T\the\tempboxCalc}
				}
				\setlength{\tempboxCalc}{0pt}
				\setlength{\tempboxC}{0pt}
				\vspace{24pt}
				
% acrescentado por gjfb em 2016-07-24 para as fontes curtas fiquem centralizadas (mesmo código que para as figuras)					
						\setlength{\tempboxCalc}{\linewidth}
						\settowidth{\tempboxD}{\tamfonte\captionfont#1}
						\addtolength{\tempboxCalc}{-\tempboxD}
						\ifthenelse{\tempboxCalc < 0}{% fonte longa
							\setlength{\tempboxCalc}{0pt}
						}{% fonte curta
							\setlength{\tempboxCalc}{\tempboxCalc/2}
						}
% acrescentado por gjfb em 2016-07-24 para as fontes curtas fiquem centralizadas (mesmo código que para as figuras) - fim	

						
%				\ifthenelse{\tempboxCalc = 0}{	% comentado por gjfb em 2016-07-24
					\settowidth{\tempboxC}{\tamfonte}
					\addtolength{\tempboxCalc}{\tempboxC}
%				}	% comentado por gjfb em 2016-07-24
%				{\setlength{\tempboxC}{0pt}}	% comentado por gjfb em 2016-07-24
				\vspace{-8mm}	% acrescentado por gjfb em 2009-10-07
				\begin{list}{\tamfonte}{\leftmargin \tempboxCalc \rightmargin 0pt \labelsep 0pt \labelwidth \tempboxC}
					\settowidth{\tempboxD}{\tamfonte#1}
					%\typeout{-------------------------------------------DDD\the\tempboxD}
					\ifthenelse{\tempboxD > \textwidth}{
						\item \captionfont#1
					}{
						\item \captionfont#1
					}
				\end{list}
				\setlength{\tempboxC}{0pt}
				\setlength{\tempboxCalc}{0pt}
			}
%			%% figure	% comentado por gjfb em 2014-01-17 - para quando o título deve ficar debaixo da figura
			{% figure - new ABNT Norm 14724-2011 - acrescentado por gjfb em 2014-07-23 - para quando o título deve ficar acima da figura - novo código para o alinhamento do fonte com a legenda 
%				\sbox{\tempbox}{\tamlabel}\setlength{\tempboxA}{\wd\tempbox}	% comentado por gjfb em 2014-07-23
				\setlength{\tempboxA}{0pt}	% acrescentado por gjfb em 2014-07-23 - para quando o título deve ficar acima da figura - novo código para o alinhamento do fonte com a legenda
				%\typeout{-------------------------------------------------------A\the\tempboxA}
%				\sbox{\tempbox}{\tamtexto}\setlength{\tempboxB}{\wd\tempbox}	% comentado por gjfb em 2014-07-23
				\sbox{\tempbox}{\tamtextolegenda}\setlength{\tempboxB}{\wd\tempbox}	% acrescentado por gjfb em 2014-07-23 - para quando o título deve ficar acima da figura - novo código para o alinhamento do fonte com a legenda
				%\typeout{-------------------------------------------------------B\the\tempboxB}
				\setlength{\tempboxCalc}{\linewidth}
				%\typeout{------------------------------------------------------ L\the\tempboxCalc}
%				\addtolength{\tempboxCalc}{-\tempboxA}	% comentado por gjfb em 2014-07-23
				%\typeout{------------------------------------------------------ -A\the\tempboxCalc}
				\addtolength{\tempboxCalc}{-\tempboxB}
				%\typeout{------------------------------------------------------ -B\the\tempboxCalc}
				\ifthenelse{\tempboxCalc < 0}{% legenda longa
					\setlength{\tempboxCalc}{\tempboxA}	% 0pt
				}{% legenda curta
					\ifthenelse{\tempboxB > 0}{% legenda não vazia
						\setlength{\tempboxCalc}{\linewidth}
						\addtolength{\tempboxCalc}{-\tempboxB}
						\setlength{\tempboxCalc}{\tempboxCalc/2 + \tempboxA}
						\vspace{-2mm}
					}{% legenda vazia
%%% cálculo de \tempboxCalc (margem esquerda do fonte) quando a legenda está vazia
						\setlength{\tempboxCalc}{\linewidth}
						\settowidth{\tempboxD}{\tamfonte\captionfont#1}
%						\gdef\tamtextofonte{\tamfonte\captionfont#1}
%						\sbox{\tempbox}{\tamtextofonte}\setlength{\tempboxD}{\wd\tempbox}				
						\addtolength{\tempboxCalc}{-\tempboxD}
						\ifthenelse{\tempboxCalc < 0}{% fonte longa
							\setlength{\tempboxCalc}{0pt}
						}{% fonte curta
							\setlength{\tempboxCalc}{\tempboxCalc/2}
						}
%%% cálculo de \tempboxCalc (margem esquerda do fonte) quando a legenda está vazia - fim
						\vspace{-6mm}
					}
				}
				\settowidth{\tempboxC}{\tamfonte}
				\addtolength{\tempboxCalc}{\tempboxC}
				\begin{list}{\tamfonte}{\leftmargin \tempboxCalc \rightmargin 0pt \labelsep 0pt \labelwidth \tempboxC}
					\item \captionfont#1
				\end{list}
				\setlength{\tempboxC}{0pt}
				\setlength{\tempboxCalc}{0pt}
			}

		% código abaixo comentado por gjfb em 2014-07-23 - ver novo código acima					
		%	{% figure - new ABNT Norm 14724-2011 - acrescentado por gjfb em 2014-01-17 - para quando o título deve ficar acima da figura
		%	\setlength{\tempboxCalc}{0pt}
		%	\setlength{\tempboxC}{0pt}
		%	\vspace{24pt}
		%	\ifthenelse{\tempboxCalc = 0}{
		%		\settowidth{\tempboxC}{\tamfonte}
		%		\addtolength{\tempboxCalc}{\tempboxC}
		%		}
		%		{\setlength{\tempboxC}{0pt}}
		%	\vspace{-8mm}	% acrescentado por gjfb em 2009-10-07
		%	\begin{list}{\tamfonte}{\leftmargin \tempboxCalc \rightmargin 0pt \labelsep 0pt \labelwidth \tempboxC}
		%	\settowidth{\tempboxD}{\tamfonte#1}
		%%\typeout{-------------------------------------------DDD\the\tempboxD}
		%	\ifthenelse{\tempboxD > \textwidth}{
		%		\item \captionfont#1
		%	}{
		%	\item \captionfont#1
		%	}
		%	\end{list}
		%	\setlength{\tempboxC}{0pt}
		%	\setlength{\tempboxCalc}{0pt}
		%	}
		
		%	{% figure	% comentado por gjfb em 2014-01-17 - para quando o título deve ficar debaixo da figura
		%	\ifthenelse{\tempboxCalc = 0}{
		%		\settowidth{\tempboxC}{\tamfonte}
		%		\addtolength{\tempboxCalc}{\tempboxC}
		%		}
		%		{\setlength{\tempboxC}{0pt}}
		%	\vspace{-3.4mm}	% acrescentado por gjfb em 2009-10-07
		%	\begin{list}{\tamfonte}{\leftmargin \tempboxCalc \rightmargin 0pt \labelsep 0pt \labelwidth \tempboxC}
		%	\item \captionfont#1
		%	\end{list}
		%	\setlength{\tempboxC}{0pt}
		%	\setlength{\tempboxCalc}{0pt}
		%	}
		}
	}
\fi

%%% comando para avisar do inicio do texto do documento
\newcommand{\inicioIntroducao}{%
	\pretexto
	\pagenumbering{arabic}% para começar a contar em arábico a partir da introdução, começando com número 1 - acrescentado por gjfb em 2009-09-14
	\pagestyle{\estilonum}%
}

%%% comando para avisar do inicio do Apêndice

\newcommand{\inicioApendice}{

\titleformat% acrescentado por gjfb em 2009-10-11
	{\chapter}%
	[display]
	{\normalfont\normalsize\bfseries}% the declarations that are applied to the whole title
	{}% the heading number
	{0pt}% the distance between the label and title text
	{}% code executed immediately preceding the heading text
	
\titlespacing{\chapter}{0pt}{-21mm}{0mm}	% 21mm foi encontrado por tentativa e erro - acrescentado por gjfb em 2009-10-11

\titlecontents% acrescentado por gjfb em 2009-10-11
	{chapter}%
	[0cm]
	{\vspace{4mm}}
	{\normalfont\normalsize\bfseries}
	{}
%	{\normalfont\normalsize\bfseries\titlerule*[1pc]{.}\contentspage}	% comentado por gjfb em 2011-03-17
%	{\normalfont\normalsize\bfseries\titlerule*[0.82pc]{.}\hspace{2mm}\contentspage}	% acrescentado por gjfb em 2011-03-17 - comentado por gjfb em 2012-10-19 pois não funciona com título de mais de uma linha
	{\normalfont\normalsize\bfseries\titlerule*[0.82pc]{.}\contentspage}	% acrescentado por gjfb em 2012-10-19

	\setlength{\labelsep}{\sepitem}
	\renewcommand {\chaptername}{\appendixname}
	\addtocontents{toc}{\protect\renewcommand{\protect\chaptername}{\protect\appendixname}}
	\pretexto
	\appendix
}

%%% comando para avisar do inicio do Anexo
%% inserido comando \anexo, ao estilo de \appendix com correcoes locais no hyperref
\newcommand{\inicioAnexo}{%

\titleformat% acrescentado por gjfb em 2009-10-11
	{\chapter}%
	[display]
	{\normalfont\normalsize\bfseries}% the declarations that are applied to the whole title
	{}% the heading number
	{0pt}% the distance between the label and title text
	{}% code executed immediately preceding the heading text
	
\titlespacing{\chapter}{0pt}{-21mm}{0mm}	% 21mm foi encontrado por tentativa e erro - acrescentado por gjfb em 2009-10-11

\titlecontents% acrescentado por gjfb em 2009-10-11
	{chapter}%
	[0cm]
	{\vspace{4mm}}
	{\normalfont\normalsize\bfseries}
	{}
%	{\normalfont\normalsize\bfseries\titlerule*[1pc]{.}\contentspage}	% comentado por gjfb em 2011-03-17
%	{\normalfont\normalsize\bfseries\titlerule*[0.82pc]{.}\hspace{2mm}\contentspage}	% acrescentado por gjfb em 2011-03-17 - comentado por gjfb em 2012-10-19 pois não funciona com título de mais de uma linha
	{\normalfont\normalsize\bfseries\titlerule*[0.82pc]{.}\contentspage}	% acrescentado por gjfb em 2012-10-19

  \setlength{\labelsep}{\sepitem}
  \appendix
  \providecommand\anexoautorefname{anexo}
	\setcounter{chapter}{0}%
	\setcounter{section}{0}%
	\def\Hy@appendixstring{anexo}% %%novo string no *.toc, para fazer o hyperlink funcionar
	\def\anexo{%
  \@ifundefined{chapter}%
    {\gdef\theHsection{\alph{section}}}%
    {\gdef\theHchapter{\alph{chapter}}}%
  \xdef\Hy@chapapp{\Hy@appendixstring}%
}
	\renewcommand{\chaptername}{\nomeanexo}
 	\addtocontents{toc}{\protect\renewcommand{\protect\chaptername}{\protect\nomeanexo}}
	\pretexto
	\anexo 
}

%%% comando para avisar do inicio do Indice
\newcommand{\inicioIndice}{
	\pagestyle{plain}%
	\pretexto
	\printindex
} 

%%%%%%%%%%%%%%%comando para avisar inicio da Contracapa%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\newcommand{\inicioContracapa}{
 \pretexto
}
%%%%%%%%%%%%%%%%%Redefinicoes de comandos

\AtBeginDocument{
%%% codigo para possiveis problemas de caption e float
%%% testar melhor

\pagenumbering{roman}% para usar estilo romano desde a capa porque MakeIndex supõe que a numeração romana precede arábica (não deve começar com arábica se continuar com romana; neste caso o MakeIndex se perde nas referências à páginas arábicas de valores inferiores ao número máximo de páginas romanas) - acrescentado por gjfb em 2011-10-09

\makeatletter
\newcommand{\@ldtable}{}
\let\@ldtable\table
\renewcommand{\table}{%
                 \setlength{\@tempdima}{\abovecaptionskip}%
                 \setlength{\abovecaptionskip}{\belowcaptionskip}%
                 \setlength{\belowcaptionskip}{\@tempdima}%
                 \@ldtable}
\makeatother 
\marcaRegistrada{}	% acrescentado por gjfb em 2014-10-07 
\financiamento{}	% acrescentado por gjfb em 2018-09-21 
}

\renewcommand{\maketitle}{%maketitle
\pagestyle{empty}
\hypersetup{
pdftitle ={\@titulo},
pdfsubject ={\@descriccao},
pdfkeywords ={\@palavraschaveFICHAC},
pdfauthor = {\@author},
}
%%%%%%%%%%%%%%%%%CAPA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%A CAPA e seu VERSO são obrigatórios nas publicações mas não devem ser somados ao total de páginas na FICHA CATALOGRÁFICA e na contagem para iniciar a paginação do trabalho.

\newlength{\metade@largura}	% acrescentado por gjfb em 2011-12-06
\setlength{\metade@largura}{0.5\linewidth}	% acrescentado por gjfb em 2011-12-06

\begin{titlepage}%
 \pdfbookmark[0]{\nomecapa}{CAPA}
 
 \ifthenelse{\equal{\@logoinpe}{true}}{	% acrescentado por gjfb em 2010-06-21
% 	{\raggedright{\includegraphics[width=12cm]{logoinpe}}\par}
 	{\raggedright{\includegraphics[width=13.4cm,trim=0 0 0 0,clip]{conf/figs/logoinpe.pdf}}\par}
 }{
 	{\raggedright{\includegraphics[width=14cm]{conf/figs/logoverno.pdf}}\par}
 }

 \ifthenelse{\equal{\@printserieinpe}{true}}
% {\vspace*{\stretch{5}}{\raggedright\normalfont\normalsize\bfseries \@serieinpe\par}}{}	% comentado por gjfb em 2010-05-01
 {\ifthenelse{\equal{\@tipoDaPublicacao}{}}{	% acrescentado por gjfb em 2010-05-01
 		\vspace*{\stretch{5}}{\raggedright\normalfont\normalsize\bfseries \@repositorio\par}	% acrescentado por gjfb em 2010-05-01
 	}{	% acrescentado por gjfb em 2010-05-01
		\vspace*{\stretch{5}}{\raggedright\normalfont\normalsize\bfseries \@repositorio-\@tipoDaPublicacao\par}	% acrescentado por gjfb em 2010-05-01
 	}}{}	% acrescentado por gjfb em 2010-05-01
 {\vspace*{\stretch{5}}{\centering\bfseries\large\MakeUppercase\@titulo\par}}
 {\vspace*{\stretch{5}}{\raggedleft\normalfont\normalsize\@author\par}}
% {\vspace*{\stretch{5}}{\centering\normalfont\normalsize\@descriccao\par}}	% comentado por gjfb em 2011-12-06

 {\vspace*{\stretch{5}}\hspace{\metade@largura}\parbox{\metade@largura}{	% acrescentado por gjfb em 2011-12-06
 	\normalfont\large\@descriccao
 }}
 
% {\vspace*{\stretch{5}}{\centering\normalfont\scriptsize\avisoDeOriginal \\ <\href{http://urlib.net/\@repositorio}{http://urlib.net/\@repositorio}>\par}}	% comentado por gjfb em 2010-05-01
 {\vspace*{\stretch{5}}{\centering\normalfont\small\avisoDeOriginal \\ <\href{http://urlib.net/\@IBI}{http://urlib.net/\@IBI}>\par}}	% acrescentado por gjfb em 2010-05-01
 {\vspace*{\stretch{5}}{\centering\normalfont\normalsize\@instituicaosigla \\ 
     \@instituicaocidade  \\ \@date\par}}
%
  \newpage
  \pdfbookmark[0]{\nomeversocapa}{VERSO}
  {\vspace*{\stretch{0}}{\raggedright\normalfont\normalsize\MakeUppercase\@tituloverso}\par}
  {\vspace*{\stretch{0}}{\@descriccaoverso\par}}
  {\vspace*{\stretch{0}}{\@descriccaoversoA\par}}
\end{titlepage}%
%%%%%%%%%%%%%%%%%%%%%%FOLHA DE ROSTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% As páginas são contadas em roman a partir da FOLHA DE ROSTO 

\pagenumbering{roman}% para usar estilo romano na paginação do pretexto - descomentado por gjfb em 2009-09-14
%\setcounter{page}{1}% este comando não é necessário porque pagenumbering já inicializa a 1

\pdfbookmark[0]{\nomefolhaderosto}{FOLHA DE ROSTO}

 \ifthenelse{\equal{\@logoinpe}{true}}{	% acrescentado por gjfb em 2010-06-21
% 	{\raggedright{\includegraphics[width=12cm]{logoinpe}}\par}
 	{\raggedright{\includegraphics[width=13.4cm,trim=0 0 0 0,clip]{conf/figs/logoinpe.pdf}}\par}
 }{
 	{\raggedright{\includegraphics[width=14cm]{conf/figs/logoverno.pdf}}\par}
 }

\ifthenelse{\equal{\@printserieinpe}{true}}
% {\vspace*{\stretch{5}}{\raggedright\normalfont\normalsize\bfseries \@serieinpe\par}}{}	% comentado por gjfb em 2010-05-01
 {\ifthenelse{\equal{\@tipoDaPublicacao}{}}{	% acrescentado por gjfb em 2010-05-01
 		\vspace*{\stretch{5}}{\raggedright\normalfont\normalsize\bfseries \@repositorio\par}	% acrescentado por gjfb em 2010-05-01
 	}{	% acrescentado por gjfb em 2010-05-01
		\vspace*{\stretch{5}}{\raggedright\normalfont\normalsize\bfseries \@repositorio-\@tipoDaPublicacao\par}	% acrescentado por gjfb em 2010-05-01
 	}}{}	% acrescentado por gjfb em 2010-05-01
{\vspace*{\stretch{5}}{\centering\bfseries\large\MakeUppercase\@titulo\par}}
{\vspace*{\stretch{5}}{\raggedleft\normalfont\normalsize\@author\par}}
%{\vspace*{\stretch{5}}{\centering\normalfont\normalsize\@descriccao\par}}	% comentado por gjfb em 2011-12-06

 {\vspace*{\stretch{5}}\hspace{\metade@largura}\parbox{\metade@largura}{	% acrescentado por gjfb em 2011-12-06
 	\normalfont\large\@descriccao
 }}
 
% {\vspace*{\stretch{5}}{\centering\normalfont\scriptsize\avisoDeOriginal \\ <\href{http://urlib.net/\@repositorio}{http://urlib.net/\@repositorio}>\par}}	% comentado por gjfb em 2010-05-01
 {\vspace*{\stretch{5}}{\centering\normalfont\small\avisoDeOriginal \\ <\href{http://urlib.net/\@IBI}{http://urlib.net/\@IBI}>\par}}	% acrescentado por gjfb em 2010-05-01
{\vspace*{\stretch{5}}{\centering\normalfont\normalsize\@instituicaosigla\\ 
  \@instituicaocidade\\ \@date\par}}
  
\newpage
\pagestyle{plain}%

\ifthenelse{\equal{\@includeFC}{true}}{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ficha Catalográfica

	\footnotesize	% used by \settowidth below
	\newlength{\cutter@width}
	\settowidth{\cutter@width}{\@cutterFICHAC}
	\newlength{\oitava@coluna}
	\settowidth{\oitava@coluna}{1234567}
	\newlength{\decimaterceira@coluna}
	\settowidth{\decimaterceira@coluna}{123456789012}
	\newlength{\oitava@colunaminuscutter}
	\setlength{\oitava@colunaminuscutter}{-\cutter@width}
	\advance\oitava@colunaminuscutter\oitava@coluna
	\newlength{\widthminusoitava@coluna}
	\setlength{\widthminusoitava@coluna}{-\oitava@coluna}
	\newlength{\widthminusdecimaterceira@coluna}
	\setlength{\widthminusdecimaterceira@coluna}{-\decimaterceira@coluna}
	\newlength{\card@width}
	\setlength{\card@width}{12.5cm}
	\newlength{\insidecard@width}
	\setlength{\insidecard@width}{.9\card@width}
	\advance\widthminusoitava@coluna\insidecard@width
	\advance\widthminusdecimaterceira@coluna\insidecard@width
	\newlength{\sexta@coluna}
	\settowidth{\sexta@coluna}{12345}
	\newlength{\quarta@coluna}
	\settowidth{\quarta@coluna}{123}
	
	% primeiraLinha - não mais usado
	\newenvironment{primeiraLinha}{%
		\begin{list}{}{%
			\setlength{\leftmargin}{\decimaterceira@coluna}
			%\setlength{\topsep}{0pt}
			%\setlength{\parskip}{0pt}
			\setlength{\labelwidth}{0pt}
			\setlength{\labelsep}{0pt}
			\setlength{\itemindent}{-\decimaterceira@coluna}
		}%
		\item
	}{%
		\end{list}
	}%

% primeiraLinha2 - versão anterior - não usado
	\newenvironment{primeiraLinha2}{%
		\begin{list}{}{%
			\setlength{\labelsep}{0pt}%
%			\renewcommand{\makelabel}[1]{{\textbf{##1}}\hfill}%
%			\footnotesize
			\settowidth{\labelwidth}{1234567}%
			\setlength{\leftmargin}{\labelwidth}%
			\addtolength{\leftmargin}{\labelsep}%
		}%
		\item[1234567\hfill]%
%		\item%
	}{%
		\end{list}
	}
% primeiraLinha - end

	\pdfbookmark[0]{\nomefichacatalografica}{nomefichac}{
		\vspace*{\stretch{1}}{
			\footnotesize{
				\centering{
					{\cardCaption\vspace{-3mm}}
					{\rule{\card@width}{0.2mm}}
					\vspace{10mm}{
%						\protect\fbox{}
						\parbox{\insidecard@width}{%
%							{1234567890123\\}
							\begin{singlespace}%
%								{%
%									\vspace{-1cm}\parbox{\insidecard@width}{%
%										\begin{primeiraLinha}%
%											\item\@cutterFICHAC\hspace{\oitava@colunaminuscutter}\@autorUltimoNomeFICHAC.
%										\end{primeiraLinha}%
%									} \par
%								}
								{%
									\vspace{-1.0mm}\hspace{\decimaterceira@coluna}\parbox{\widthminusdecimaterceira@coluna}{\hspace{-\sexta@coluna}\@autorUltimoNomeFICHAC.} \par
								}
%								{%
%									\vspace{-1.0mm}\hspace{\oitava@coluna}\@autorUltimoNomeFICHAC. \\ \par \vspace{0.8mm}
%								}
								{
%%									\vspace{1mm}\parbox[b]{\oitava@coluna}{\@cutterFICHAC\\}\parbox{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@titulo ~/~\@author.	% comentado por gjfb em 2013-10-07
%%										\@autorAbreviadoFICHAC.\ 
%										-- \@instituicaocidade~: \@instituicaosigla, \@date.} \par
%									\vspace{1mm}\parbox[t]{\oitava@coluna}{\@cutterFICHAC\\}\parbox[t]{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@titulo ~/~\@author.	% acrescentado por gjfb em 2013-10-07, comentado por gjfb em 2015-11-16
%%										\@autorAbreviadoFICHAC.\ 
%										-- \@instituicaocidade~: \@instituicaosigla, \@date.} \par
									\@ifundefined{@autorFICHAC}{
										\vspace{1mm}\parbox[t]{\oitava@coluna}{\@cutterFICHAC\\}\parbox[t]{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@titulo ~/~\@author.	% acrescentado por gjfb em 2013-10-07, comentado por gjfb em 2015-11-16
%%										\@autorAbreviadoFICHAC.\ 
										-- \@instituicaocidade~: \@instituicaosigla, \@date.} \par
									}{
										\vspace{1mm}\parbox[t]{\oitava@coluna}{\@cutterFICHAC\\}\parbox[t]{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@titulo ~/~\@autorFICHAC.	% acrescentado por gjfb em 2015-11-16
%%										\@autorAbreviadoFICHAC.\ 
										-- \@instituicaocidade~: \@instituicaosigla, \@date.} \par
									}
								}
%								{
%									\vspace{1mm}\hspace{\oitava@coluna}\hspace{\quarta@coluna}\@paginasFICHAC\ p.\ ;\  (\@serieinpe) \par	% comentado por gjfb em 2010-05-01
%								}
%								{
%									\vspace{1mm}\hspace{\oitava@coluna}\hspace{\quarta@coluna}\@paginasFICHAC\ p.\ ;\  (\@repositorio-\@tipoDaPublicacao) \par	% acrescentado por gjfb em 2010-05-01
%								}
			 					{
			 						\ifthenelse{\equal{\@tipoDaPublicacao}{}}{	% acrescentado por gjfb em 2010-05-01
			 							\vspace{1mm}\hspace{\oitava@coluna}\hspace{\quarta@coluna}\@paginasFICHAC\ p.\ ;\  (\@repositorio) \par	% acrescentado por gjfb em 2010-05-01 - \scriptsize acrescentado por gjfb em 2010-08-31
			 						}{	% acrescentado por gjfb em 2010-05-01
										\vspace{1mm}\hspace{\oitava@coluna}\hspace{\quarta@coluna}\@paginasFICHAC\ p.\ ;\  \scriptsize(\@repositorio-\@tipoDaPublicacao) \par	% acrescentado por gjfb em 2010-05-01 - \scriptsize acrescentado por gjfb em 2010-08-31
			 						}	% acrescentado por gjfb em 2010-05-01
			 					}
			
								\vspace{5.2mm}
			
								\ifthenelse{\equal{\@includeFCNotasOrientadorTD}{true}}{
									{\vspace{0mm}\hspace{\oitava@coluna}\parbox{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@tipoTD\ (\@cursoFA) -- \@instituicaoDefesa, \@instituicaocidade, \@anoDefesa.} \par}
									{\vspace{1mm}\hspace{\oitava@coluna}\parbox{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@nomeAtributoOrientadorFICHAC~: \@valorAtributoOrientadorFICHAC.} \par}
									\vspace{6mm}
								}{}
			
								{\vspace{0mm}\hspace{\oitava@coluna}\parbox{\widthminusoitava@coluna}{\hspace{\quarta@coluna}\@palavraschaveFICHAC}\\ \par}
							\end{singlespace}
							{\raggedleft CDU\ \@numeroCDUFICHAC\\ \par}
						}
						\vspace{1.5mm}
					}
					\rule{\card@width}{0.2mm}
				}
				\par \vspace*{\stretch{1}}
			}
		}
% termos de uso
		\renewcommand{\baselinestretch}{1}
		\footnotesize
		\licenca

		\license
		
		\@marcaRegistrada	% acrescentado por gjfb em 2014-10-07
		
		\@financiamento	% acrescentado por gjfb em 2018-09-21
		
%		\normalsize		% retornar para normalsize - comentado por gjfb em 2013-12-24 - nesta posição este comando está sem efeito
	}
}	% fim da ficha
{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Somente os termos de uso - acrescentado por gjfb em 2013-10-07

	\pdfbookmark[0]{\termosdeuso}{}{
		\vspace*{\stretch{1}}{
		}

		\renewcommand{\baselinestretch}{1}
		\footnotesize
		\licenca

		\license
		
		\@marcaRegistrada	% acrescentado por gjfb em 2014-10-07
		
		\@financiamento	% acrescentado por gjfb em 2018-09-21
		
%		\normalsize		% retornar para normalsize - comentado por gjfb em 2013-12-24 - nesta posição este comando está sem efeito
	}
}	% fim dos termos de uso
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FOLHA DE APROVAÇAO PELA BANCA EXAMINADORA

\normalsize		% retornar para normalsize - acrescentado por gjfb em 2013-12-24

\ifthenelse{\equal{\@includeFA}{true}}{%
	\pretexto
	\pdfbookmark[0]{\nomefolhadeaprovacao}{aprovacao}
	\begin{flushright}
		\normalfont\normalsize\parbox{6.8cm}{\@tituloFA\\\@cursoFA}
	\end{flushright}
	
	\vspace*{\stretch{1}}
	
	\begin{center}
		\resizebox{15.5cm}{!}{
			\begin{tabular}{lp{0.2cm}>{\PBS\raggedleft\hspace{0pt}}p{7cm}}
				\ifthenelse{\equal{\@membroA}{}}{}{%
					{\@membroA} & & \hrulefill   \\
					& & \@membroAP\\
					& & \@membroAPC \\
					& & \\
				}
				\ifthenelse{\equal{\@membroB}{}}{}{%
					{\@membroB} & & \hrulefill \\
					& & \@membroBP \\
					& & \@membroBPC \\
					& & \\
				}
				\ifthenelse{\equal{\@membroC}{}}{}{%
					{\@membroC} & & \hrulefill \\
					& & \@membroCP \\
					& & \@membroCPC \\
					& & \\
				}
				\ifthenelse{\equal{\@membroD}{}}{}{%
					{\@membroD} & & \hrulefill \\
					& & \@membroDP \\
					& & \@membroDPC \\
					& & \\
				}
				\ifthenelse{\equal{\@membroE}{}}{}{%
					{\@membroE} & & \hrulefill \\
					& & \@membroEP \\
					& & \@membroEPC \\
					& & \\
				}
				\ifthenelse{\equal{\@membroF}{}}{}{%
					{\@membroF} & & \hrulefill \\
					& & \@membroFP \\
					& & \@membroFPC \\
					& & \\
				}
				\ifthenelse{\equal{\@membroG}{}}{}{%
					{\@membroG} & & \hrulefill \\
					& & \@membroGP \\
					& & \@membroGPC \\
					& & \\
				}
			\end{tabular}
		}
	\end{center}
	
	\vspace*{\stretch{1}}
	
	
	\begin{flushleft}
		%\normalfont\normalsize{\@candidatoOUcandidataFA:\space\@author}%incluir o comentário dessa linha quando montar publicação que contenha folha de aprovação
		\normalfont\normalsize{}%retirar o comentário dessa linha quando montar publicação que não contenha folha de aprovação
	\end{flushleft}
	
	\vspace*{\stretch{1}}
	
	\begin{flushright}
		%\normalfont\normalsize{\@instituicaocidade, \@dataAprovacaoFA.}%incluir esta linha quando montar trabalho que contem a folha de aprovação
		\normalfont\normalsize{}%retirar esta linha quando montar trabalho que contem a folha de aprovação
	\end{flushright}
}{}
}

%%%%%%%%%%%%%%%%%%%%%%%Iniciais

\newenvironment{epigrafe}{%
	\pretexto
	\pdfbookmark[0]{{\nomeepigrafe}}{nomeepigrafe}
	\begin{center}
		\begin{singlespace}%
			\vspace*{\stretch{1}}
}{
			\vspace*{\stretch{1}}
		\end{singlespace}%
	\end{center}
}

\newenvironment{dedicatoria}{%
	\pretexto
	\pdfbookmark[0]{{\nomededicatoria}}{nomededicatoria}
	\begin{flushright}
		\begin{singlespace}%
			\vspace*{\stretch{1}}
}{
		\end{singlespace}%
	\end{flushright}
}

\newenvironment{agradecimentos}{%
	\pretexto
	\pdfbookmark[0]{{\nomethank}}{nomethank}
		\begin{singlespace}%
			{\centering\normalfont\normalsize\bfseries\MakeUppercase\nomethank\\*[\baselsdefault]\par}%
%			\vspace*{\stretch{1}}%
%}{
%			\vspace*{\stretch{1}}
		\end{singlespace}%
}

\newenvironment{resumo}{%
	\pretexto%
	\pdfbookmark[0]{\nomeresumo}{nomeresumo}
  	\begin{singlespace}%
  		\vspace*{\stretch{1}}%
  		{\centering\normalfont\normalsize\bfseries\MakeUppercase\abstractname\\*[\baselsdefault]}%
}{%
  		\vspace*{\stretch{1}}
	\end{singlespace}%
}

\renewenvironment{abstract}{%
	\pretexto%
	\pdfbookmark[0]{\nomeabstract}{nomeabstract}
  	\begin{singlespace}%
  		{\centering\normalfont\normalsize\bfseries\MakeUppercase\@title\\*}%
  		\vspace*{\stretch{1}}
		{\centering\normalfont\normalsize\bfseries\MakeUppercase\nomeabstract\\*[\baselsdefault]}%
}{%
		\vspace*{\stretch{1}}
	\end{singlespace}%
}

\newcommand{\palavraschave}[1]{%
	\gdef\@palavraschave{#1}
  	\begin{singlespace}%
		\nomepalavraschave: \@palavraschave
	\end{singlespace}%
}
\newcommand{\keywords}[1]{%
	\gdef\@keywords{#1}
  	\begin{singlespace}%
		\nomekeywords: \@keywords	% @palavraschave -> keywords - corrigido por gjfb em 2014-03-20
	\end{singlespace}%
}
\newcommand*{\palavrachave}[1]{%
	\gdef\@palavrachave{#1}%
	\@palavrachave.
}


% Lista de simbolos
\newenvironment{simbolos}{%
\refstepcounter{section}
	\pretexto%
	\pdfbookmark[0]{\listsimbname}{listsimbname}% necessário quando não faz parte da tabela de conteudos - acrescentado por gjfb em 2009-09-14
%	{\addtocontents{toc}{\cftpagenumbersoff{chapter}}}% para retirar página no sumário - comentado por gjfb em 2009-09-14
%	{\addcontentsline{toc}{chapter}{\listsimbname}}% para colocar lista de símbolos no sumário - comentado por gjfb em 2009-09-14
	\begin{singlespace}%
		{\centering\normalfont\normalsize\bfseries\MakeUppercase\listsimbname\\*[\baselsdefault]}%
		\vspace{1cm}
		\begin{supertabular}{lll}
}{
		\end{supertabular}
	\end{singlespace}%
%	{\addtocontents{toc}{\cftpagenumberson{chapter}}}% comentado por gjfb em 2009-09-14
	\pretexto%
}

% Lista de abreviaturas e siglas
\newenvironment{abreviaturasesiglas}{%
\refstepcounter{section}
	\pretexto%
	\pdfbookmark[0]{\nomeabreviaturasesiglas}{nomeabreviaturasesiglas}% necessário quando não faz parte da tabela de conteudos - acrescentado por gjfb em 2009-09-14
%	{\addtocontents{toc}{\cftpagenumbersoff{chapter}}}% para retirar página no sumário - comentado por gjfb em 2009-09-14
%	{\addcontentsline{toc}{chapter}{\nomeabreviaturasesiglas}}% para colocar lista de abreviaturas e siglas no sumário - comentado por gjfb em 2009-09-14
	\begin{singlespace}%
		{\centering\normalfont\normalsize\bfseries\MakeUppercase\space\nomeabreviaturasesiglas\\*[\baselsdefault]}%
		\vspace{1cm}
		\begin{supertabular}{lll}
}{
		\end{supertabular}
	\end{singlespace}%
%	{\addtocontents{toc}{\cftpagenumberson{chapter}}}% comentado por gjfb em 2009-09-14
	\pretexto%
}

% Glossario
\newenvironment{glossario}{%
  \setlength{\labelsep}{\sepitem}
	\pretexto%
	\thispagestyle{\estilonum}
	\pagestyle{\estilonum}
	\refstepcounter{chapter}
	{\addcontentsline{toc}{chapter}{\nomeglossarios}}
	\begin{singlespace}%
		{\centering\normalfont\normalsize\bfseries\MakeUppercase\nomeglossarios\\*[\baselsdefault]}%
		\vspace{1cm}
		\begin{description}
}{
		\end{description}
	\end{singlespace}%
}


%%%%%%%CHAPTER

\ifthenelse{\equal{\@docSemFormatacaoCapitulo}{true}}{
\renewcommand{\@makechapterhead}[1]{%
  {\normalfont\normalsize\bfseries\MakeUppercase\thechapter\space\space #1\par\nobreak}}
}{%
\renewcommand{\@makechapterhead}[1]{%
  {\centering\normalfont\normalsize\bfseries\MakeUppercase\chaptername\space%
   \thechapter\par\nobreak #1\par\nobreak}}
}

\renewcommand{\@schapter}[1]{%
	\@makeschapterhead{#1}}

\renewcommand{\@makeschapterhead}[1]{%
	{\centering\normalfont\normalsize\bfseries\MakeUppercase #1\par\nobreak}}

%%%%%% - Cabecario das seccoes e subseccoes:

\renewcommand{\section}{%
  \suppressfloats[t]%
  \@startsection{section}{1}{0mm}{0pt}{0.1pt}%
     {\normalfont\normalsize\bfseries}}

\renewcommand{\subsection}{%
  \@startsection{subsection}{2}{0mm}{0pt}{0.1pt}%
     {\normalfont\normalsize\bfseries}}

\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{3}{0mm}{0pt}{0.1pt}%
     {\normalfont\normalsize\bfseries}}
     
\renewcommand{\paragraph}{%
  \@startsection{paragraph}{4}{0mm}{0pt}{0.1pt}%
     {\normalfont\normalsize\bfseries}}

\renewcommand{\subparagraph}{%
  \@startsection{subparagraph}{5}{0mm}{0pt}{0.1pt}%
     {\normalfont\normalsize\bfseries}}


%%%%%%%%%%%%%%%%%%%% - Sumário:
\setlength{\cftbeforetoctitleskip}{3pt}
\renewcommand{\cfttoctitlefont}{%
	\hfill\normalfont\normalsize\bfseries\MakeUppercase}

\renewcommand{\cftaftertoctitle}{%
%	\hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries P\'{a}g.}% comentado por gjfb em 2013-10-29
	\hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries\nomepagina}% acrescendato por gjfb em 2013-10-29
}

\setlength{\cftaftertoctitleskip}{\parsinpe}

\setlength{\cftbeforepartskip}{\parsinpe}
\setlength{\cftbeforechapskip}{\parsinpe}
\setlength{\cftbeforesecskip}{\parsdefault}
\setlength{\cftbeforesubsecskip}{\parsdefault}
\setlength{\cftbeforesubsubsecskip}{\parsdefault}
\setlength{\cftbeforeparaskip}{\parsdefault}
\setlength{\cftbeforesubparaskip}{\parsdefault}

\setlength{\cftchapindent}{0pt}
\setlength{\cftsecindent}{0pt}
\setlength{\cftsubsecindent}{0pt}
\setlength{\cftsubsubsecindent}{0pt}
\setlength{\cftparaindent}{0pt}
\setlength{\cftsubparaindent}{0pt}

%\renewcommand{\cftchapaftersnum}{ -}
\renewcommand{\cftchapfont}{\normalfont\normalsize\bfseries}%\sc}%\MakeUppercase\chaptername\ }
\renewcommand{\cftpartfont}{\normalfont\normalsize\bfseries}%\sc}%MakeUppercase}

% poe ou nao a palavra capitulo no sumario
\ifthenelse{\equal{\@docSemFormatacaoCapitulo}{true}}{
%% nada faz
}{%
\renewcommand{\cftchappresnum}{\MakeUppercase\chaptername\space}
\renewcommand{\cftpartpresnum}{\MakeUppercase\partname\space}
\newlength{\chaplen}
\newlength{\partlen}
\settowidth{\chaplen}{\normalfont\normalsize\bfseries\cftchappresnum\cftchapaftersnum}
\settowidth{\partlen}{\normalfont\normalsize\bfseries\cftpartpresnum}
\addtolength{\cftchapnumwidth}{\chaplen}
\addtolength{\cftpartnumwidth}{\partlen}
}

% poe linhas pontilhadas nos capitulos do sumario
\renewcommand{\cftchapleader}{\normalfont\bfseries\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftchappagefont}{\normalfont\normalsize\bfseries}
%\renewcommand{\cftpartleader}{\normalfont\bfseries\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftpartpagefont}{\normalfont\normalsize\bfseries}

\renewcommand{\cftsecfont}{\normalfont\normalsize}
%\renewcommand{\cftsecaftersnum}{\ -} para retirar o hífen comente
\renewcommand{\cftsecpagefont}{\normalfont\normalsize}

\renewcommand{\cftsubsecfont}{\normalfont\normalsize}
%\renewcommand{\cftsubsecaftersnum}{\ -}
\renewcommand{\cftsubsecpagefont}{\normalfont\normalsize}

\renewcommand{\cftsubsubsecfont}{\normalfont\normalsize}
%\renewcommand{\cftsubsubsecaftersnum}{\ -}
\renewcommand{\cftsubsubsecpagefont}{\normalfont\normalsize}

\renewcommand{\cftparafont}{\normalfont\normalsize}
\renewcommand{\cftparaaftersnum}{\ -}
\renewcommand{\cftparapagefont}{\normalfont\normalsize}

\renewcommand{\cftsubparafont}{\normalfont\normalsize}
\renewcommand{\cftsubparaaftersnum}{\ -}
\renewcommand{\cftsubparapagefont}{\normalfont\normalsize}

% - Lista de figuras:	

\setlength{\cftbeforeloftitleskip}{0pt}
\renewcommand{\cftloftitlefont}{%
	\hfill\normalfont\normalsize\bfseries\MakeUppercase}
\renewcommand{\cftafterloftitle}{%
	\pdfbookmark[0]{\listfigurename}{listfigurename}% necessário quando não faz parte da tabela de conteudos - acrescentado por gjfb em 2009-09-14
%	\addtocontents{toc}{\cftpagenumbersoff{chapter}}% comentado por gjfb em 2009-09-14
%	\addcontentsline{toc}{chapter}{\listfigurename}% comentado por gjfb em 2009-09-14
%	\hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries P\'ag.}% comentado por gjfb em 2013-10-29
	\hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries\nomepagina}% acrescendato por gjfb em 2013-10-29
%	{\addtocontents{toc}{\cftpagenumberson{chapter}}}% comentado por gjfb em 2009-09-14
}
\setlength{\cftafterloftitleskip}{\parsinpe}
\setlength{\cftbeforefigskip}{-0,09\parsinpe}
\setlength{\cftfigindent}{0pt}
\renewcommand{\cftfigfont}{\normalfont\normalsize}
\renewcommand{\cftfigpagefont}{\normalfont\normalsize}

   
% - Lista de tabelas:

\setlength{\cftbeforelottitleskip}{0pt}
\renewcommand{\cftlottitlefont}{
	\hfill\normalfont\normalsize\bfseries\MakeUppercase}
\renewcommand{\cftafterlottitle}{%
	\pdfbookmark[0]{\listtablename}{listtablename}% necessário quando não faz parte da tabela de conteudos - acrescentado por gjfb em 2009-09-14
%	\addtocontents{toc}{\cftpagenumbersoff{chapter}}% comentado por gjfb em 2009-09-14
%	\addcontentsline{toc}{chapter}{\listtablename}% comentado por gjfb em 2009-09-14
%	\hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries P\'ag.}% comentado por gjfb em 2013-10-29
	\hfill\mbox{}\\[\parsinpe]\mbox{}\hfill\underline{\normalfont\normalsize\bfseries\nomepagina}% acrescendato por gjfb em 2013-10-29
%	\addtocontents{toc}{\cftpagenumberson{chapter}}% comentado por gjfb em 2009-09-14
	}
\setlength{\cftafterlottitleskip}{\parsinpe}
\setlength{\cftbeforetabskip}{-0,09\parsinpe}
\setlength{\cfttabindent}{0pt}
\renewcommand{\cfttabfont}{\normalfont\normalsize}
\renewcommand{\cfttabpagefont}{\normalfont\normalsize}


%%%%%%%%%%%%%%%%%% thebibliography
\renewenvironment{thebibliography}[1]{%
	\chapter*{\refname}
	\refstepcounter{chapter}
	\addcontentsline{toc}{chapter}{\refname}
	\bigskip
  \label{referbiblio}	\flushleft\list{\@biblabel{\@arabic\c@enumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin\labelwidth\advance\leftmargin\labelsep%
		\@openbib@code
		\usecounter{enumiv}%
		\let\p@enumiv\@empty%
		\renewcommand\theenumiv{\@arabic\c@enumiv}%
	}%
	\sloppy
   \clubpenalty4000
   \@clubpenalty \clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m%
} 
{ 	
	\def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
	\endlist
}

%%%%%%%%%%%%%%%%%% theindex
\renewenvironment{theindex}{
  \setlength{\labelsep}{\sepitem}
	\thispagestyle{\estilonum}
	\pagestyle{\estilonum}
	\refstepcounter{chapter}
	{\addcontentsline{toc}{chapter}{\indexname}}
	\if@twocolumn
        		\@restonecolfalse
                \else
                	\@restonecoltrue
                \fi
                \@restonecoltrue
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}\vspace*{25\p@}]%
                \@mkboth{\MakeUppercase\indexname}{\MakeUppercase\indexname}%
	\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem
}{\if@restonecol\onecolumn\else\clearpage\fi}

%%%%%% Citação (citacao) %%%%%%%%
\newenvironment{citacao}
               {\begin{spacing}{1}\footnotesize\list{}{\leftmargin=4cm \rightmargin=0cm}
               \item\relax}
               {\endlist\end{spacing}\vspace\parskip}

%%%%%% Epígrafe nos Capítulos %%%%%% opcional
\newcommand{\epicap}[2]{
 \vspace{\baselsinpe}
               {\list{}{\listparindent 2em%
                        \itemindent    \listparindent
                        \rightmargin=0cm   \leftmargin=4cm
                       }%
                \item\relax\raggedleft\sffamily\footnotesize\slshape ``#1''
                \\[0.5\parsinpe]\raggedleft\upshape (#2) \par}
               {\endlist}
 \vspace{\baselsinpe}
}

%%%%%% Watermark / Marca d'água %%%%%%
\newcommand{\watermark}[1]{
 \AddToShipoutPicture{%
  \AtTextCenter{%
    \makebox(0,0)[c]{\resizebox{\textwidth}{!}{%
      \rotatebox{45}{\textsf{\textbf{\textcolor[gray]{0.85}{#1}}}}}}%
  }
 }
}
