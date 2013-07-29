%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade UNIVILLE
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is fernando, fernando@mksdev.com
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univille-brasil-abntex2}[2013/04/01 v1.0 Modelo da UNIVILLE baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


\addto\captionsbrazil{%
%  \renewcommand{\bibname}{REF\^ENCIAS}
%  \renewcommand{\indexname}{\'INDICE}
  \renewcommand{\listfigurename}{Lista de figuras}
%  \renewcommand{\listtablename}{LISTA DE QUADROS}
}

%% CONSTANTES
% Nomes constantes
%\renewcommand{\folhaderostoname}{FOLHA DE ROSTO}
%\renewcommand{\epigraphname}{EP\'IGRAFE}
%\renewcommand{\dedicatorianame}{DEDICAT\'ORIA}
%\renewcommand{\errataname}{ERRATA}
%\renewcommand{\agradecimentosname}{AGRADECIMENTOS}
%\renewcommand{\anexoname}{ANEXO}
%\renewcommand{\anexosname}{ANEXOS}
%\renewcommand{\apendicename}{AP\^ENDICE}
%\renewcommand{\apendicesname}{AP\^ENDICES}
%\renewcommand{\orientadorname}{Orientador:}
%\renewcommand{\coorientadorname}{Coorientador:}
%\renewcommand{\folhadeaprovacaoname}{FOLHA DE APROVA\c{C}\~AO}
%\renewcommand{\resumoname}{RESUMO}
%\renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
%\renewcommand{\listadesimbolosname}{LISTA DE S\'IMBOLOS}


% CAPA UNIVILLE
\renewcommand{\imprimircapa}{%

	\begin{capa}
    	\begin{center}
    	\MakeUppercase{\imprimirinstituicao} 
    	
    	\vskip 10.5cm%

		{\MakeUppercase{\imprimirtitulo}}
		  {\linebreak
		  \linebreak
		  \linebreak}

			\MakeUppercase{\imprimirautor} \\
		    \MakeUppercase{\imprimirorientador} \\

			
			\vspace*{\fill}

			\vspace*{\fill}
			{\large\imprimirlocal}
			\par
		   {\large\imprimirdata}
		
		\end{center}
	\end{capa}
   %\setcounter{footnote}{0}

}


% folha de rosto UNIVILLE
\makeatletter

\renewcommand{\folhaderostocontent}{

  \begin{center}
    %\vspace*{1cm}
    \MakeUppercase{\imprimirautor}

    \vspace*{\fill}\vspace*{\fill}
    \MakeUppercase{\textbf{\imprimirtitulo}}
    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
      	\SingleSpacing
         \imprimirpreambulo
       \end{minipage}%
       \vspace*{\fill}
    }%

    \vspace*{\fill}

    {\large\imprimirlocal}
    \par
    {\large\imprimirdata}
    %\vspace*{2cm}

  \end{center}

}

% CORRIGIR STITLE
%\newcommand\stitle[1] 
%{
%	{
%	\begin{center}
%		\textbf{\MakeUppercase{#1}}
%		\linebreak
%	\end{center}
%	}
%}

% CORREÇÂO DO TITULO DA EPIGRAFE
% ---
% Epigrafe
%\renewenvironment{epigrafe}[1][\epigraphname]{%
%   \ifthenelse{\equal{#1}{}}{%
%    \PRIVATEbookmarkthis{\epigraphname}
%    }{\pretextualchapter{#1}}
%  }{\PRIVATEclearpageifneeded}
%
% ---



%\renewcommand\listoffigures{%
%	\addcontentsline{toc}{chapter}{\listfigurename}
%    \if@twocolumn
%     \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%
%	\stitle{\listfigurename}% 
%      \@mkboth{\MakeUppercase\listfigurename}%
%              {\MakeUppercase\listfigurename}%
%    \@starttoc{lof}%
%    \if@restonecol\twocolumn\fi
%    }

%\renewcommand\tableofcontents{%
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \stitle{\contentsname
%        \@mkboth{%
%           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
%    \@starttoc{toc}%
%    \if@restonecol\twocolumn\fi
%    }

% REVIEW COUNTERS
%\renewcommand*\chaptermark[1]{}
%\setcounter{secnumdepth}{2}

% TAMANHO DAS MARGENS
\renewcommand*\l@section{\@dottedtocline{1}{0em}{2.5em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{0em}{3.5em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{0em}{4.5em}}

%\renewcommand \thefigure
%     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
	 
%\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{2.3em}}


%%ESTILO DE CABEÇALHOS E RODAPE DA UNIVILLE
\makepagestyle{univille}
  %%cabeçalhos
  \makeevenhead{univille} %%pagina par
     {}
     {}
     {\thepage}
  \makeoddhead{univille} %%pagina ímpar ou com oneside
     {}
     {}
     {\thepage}
  %\makeheadrule{univille}{\textwidth}{\normalrulethickness} %linha
  %% rodapé
  \makeevenfoot{univille}
     { } %%pagina par
     { }
     { } 
  \makeoddfoot{univille} %%pagina ímpar ou com oneside
     { }
     { }
     { }

\makeatother

\usepackage{xcolor}
% Definindo novas cores
\definecolor{verde}{rgb}{0.25,0.5,0.35}
\definecolor{jpurple}{rgb}{0.5,0,0.35}
% Configurando layout para mostrar codigos Java
\usepackage{listings}
\lstset{
  language=Java,
  basicstyle=\ttfamily\small, 
  keywordstyle=\color{jpurple}\bfseries,
  stringstyle=\color{red},
  commentstyle=\color{verde},
  morecomment=[s][\color{blue}]{/**}{*/},
  extendedchars=true, 
  showspaces=false, 
  showstringspaces=false, 
  numbers=left,
  numberstyle=\tiny,
  breaklines=true, 
  backgroundcolor=\color{cyan!10}, 
  breakautoindent=true, 
  captionpos=b,
  xleftmargin=0pt,
  tabsize=4
}