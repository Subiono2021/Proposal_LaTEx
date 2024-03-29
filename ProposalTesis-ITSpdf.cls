%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% File `Proposal TESIS-ITSpdf.cls' ini ditujukan untuk menulis laporan
%%% Tesis menggunakan LaTeX untuk program pasca sarjana matematika
%%% di Institut Teknologi Sepuluh Nopember, Surabaya
%%%
%%% Komentar, saran, koreksi, modifikasi untuk file ini dipersilakan
%%% 
%%% File ini telah dimodifikasi oleh Subiono : 23 Pebruari 2024
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{TA-ITS}[12/12/2010 v1.01]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper,12pt,twoside,openright,final]{book}
\RequirePackage[hmargin={4cm,3cm},vmargin={3.5cm,3cm}]{geometry}
\RequirePackage{graphicx}
\RequirePackage[refpage,intoc]{nomencl}
%\renewcommand*{\pagedeclaration}[1]{\unskip\dotfill\hyperpage{#1}}
\makenomenclature

\RequirePackage{longtable,amssymb,amsmath,amsthm,amsfonts,indentfirst,
                tabularx,ifthen}
\RequirePackage{hyperref}
%\usepackage{apacite}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\theoremstyle{remark}
\newtheorem{rmk}{Remark}[section]
\theoremstyle{proof}
\newtheorem{prf}{Bukti}[section]
\theoremstyle{plain}
\newtheorem{thm}{Teorema}[section]
\theoremstyle{plain}
\newtheorem{pro}{Proposisi}[section]
\theoremstyle{plain}
\newtheorem{dfn}{Definisi}[section]
\theoremstyle{plain}
\newtheorem{exam}{Contoh}[section]
\theoremstyle{plain}
\newtheorem{lemma}{Lemma}[section]


\newcommand{\tensor}{\otimes}
\newcommand{\homotopic}{\simeq}
\newcommand{\homeq}{\cong}
\newcommand{\iso}{\approx}
\DeclareMathOperator{\ho}{Ho}
\DeclareMathOperator*{\colim}{colim}
\newcommand{\Real}{\mathbb{R}}

\newcommand{\dis}{\displaystyle}
\newcommand*{\defeq}{\stackrel{\text{def}}{=}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\PP}{\mathrm{P}}
\newcommand{\QQ}{\mathrm{Q}}
\newcommand{\KQ}{\mathrm{H}}
\newcommand{\M}{\mathcal{M}}
\newcommand{\W}{\mathcal{W}}
\newcommand{\Riemann}{\mathcal{R}}
\newcommand{\epsi}{\varepsilon}
\newcommand{\nor}{\parallel}
\newcommand{\deltaepsilon}{\delta_\varepsilon}
\newcommand{\pdot}{\dot{\mathcal{P}}}
\newcommand{\p}{\mathcal{P}}
\newcommand{\itilde}{\tilde{\imath}}
\newcommand{\jtilde}{\tilde{\jmath}}
\newcommand{\ihat}{\hat{\imath}}
\newcommand{\jhat}{\hat{\jmath}}
%
\newcommand{\@judul}{Judul T.A.}
\DeclareRobustCommand{\Judul}[1]{%
    \renewcommand{\@judul}{#1}%
}
\newcommand{\@juduleng}{The Title}
\DeclareRobustCommand{\JudulEng}[1]{%
    \renewcommand{\@juduleng}{#1}%
}
\newcommand{\@nama}{Nama Mahasiswa}
\DeclareRobustCommand{\Nama}[1]{%
   \renewcommand{\@nama}{#1}%
}
\newcommand{\@NRP}{0611 1650 010 018}
\DeclareRobustCommand{\NRP}[1]{%
   \renewcommand{\@NRP}{#1}
}
\newcommand\@jur{Matematika}
\DeclareRobustCommand\Jurusan[1]{%
   \renewcommand\@jur{#1}
}
\newcommand\@dept{Mathematics}
\DeclareRobustCommand\Department[1]{%
   \renewcommand\@dept{#1}
}
\newcommand\@bidstudi{Analisis dan Aljabar}
\DeclareRobustCommand\BidangStudi[1]{%
   \renewcommand\@bidstudi{#1}
}
\newcommand\@thn{2010}
\DeclareRobustCommand\Tahun[1]{%
   \renewcommand\@thn{#1}
}
\newcommand\@fak{Matematika, Komputasi, dan Sains Data}
\newcommand\@faks{FSAD}
\DeclareRobustCommand\Fakultas[2]{%
   \renewcommand\@fak{#1}
   \renewcommand\@faks{#2}
}
\newcommand\@fac{Mathematics, Computing, and Data Science}
\DeclareRobustCommand\Faculty[1]{%
   \renewcommand\@fac{#1}
}
\newcommand\@pbbsatu{Nama Pembimbing Pertama}
\newcommand\@pbbdua{Nama Pembimbing Ke-dua}
\newcommand\@pbbtiga{}
\DeclareRobustCommand\Pembimbing[3]{%
   \renewcommand{\@pbbsatu}{#1}%
   \renewcommand{\@pbbdua}{#2}%
   \renewcommand{\@pbbtiga}{#3}%
}
\newcommand\@NIPpbbsatu{12345678 123456 1 123}
\newcommand\@NIPpbbdua{12345678 123456 1 123}
\newcommand\@NIPpbbtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPembimbing[3]{%
   \renewcommand{\@NIPpbbsatu}{#1}%
   \renewcommand{\@NIPpbbdua}{#2}%
   \renewcommand{\@NIPpbbtiga}{#3}%
}
\newcommand\@pujsatu{Nama Penguji Pertama}
\newcommand\@pujdua{Nama Penguji Ke-dua}
\newcommand\@pujtiga{}
\DeclareRobustCommand\Penguji[3]{%
   \renewcommand{\@pujsatu}{#1}%
   \renewcommand{\@pujdua}{#2}%
   \renewcommand{\@pujtiga}{#3}%
}
\newcommand\@NIPpujsatu{12345678 123456 1 123}
\newcommand\@NIPpujdua{12345678 123456 1 123}
\newcommand\@NIPpujtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPenguji[3]{%
   \renewcommand{\@NIPpujsatu}{#1}%
   \renewcommand{\@NIPpujdua}{#2}%
   \renewcommand{\@NIPpujtiga}{#3}%
}
\newcommand{\@direktur}{Nama Direktur}
\DeclareRobustCommand{\Direktur}[1]{%
	\renewcommand{\@direktur}{#1}%
}
\newcommand{\@NRPDIR}{ 19710513 199702 1 001 }
\DeclareRobustCommand{\NRPDIR}[1]{%
	\renewcommand{\@NRPDIR}{#1}
}
\newcommand\BagianAwal{%
    \frontmatter
    \pagestyle{plain}
}
\newcommand\LembarJudul{%
    \cleardoublepage\thispagestyle{empty}
    \enlargethispage{1cm}
    \begin{flushleft}
    	\includegraphics[width=35mm]{lambang-its}\\[15mm]{\color{mygreen}\makebox[\textwidth]{\rule{200cm}{8pt}}}\\
    	\vfill\noindent\textsf{%
    		PROPOSAL TESIS~ - ~KM 185401\\[2ex]
    		{\fontsize{18}{2}\selectfont{\textbf{\MakeUppercase{\@judul}}}}\\[3ex]
    		\MakeUppercase{\@nama}\\NRP \@NRP\\[3ex]
    		\MakeUppercase{Dosen Pembimbing}:\\
    		\@pbbsatu\\ \@pbbdua\mbox{}\\ \@pbbtiga\mbox{}\\[2ex]
    		PROGRAM MAGISTER\\
    		DEPARTEMEN~ \MakeUppercase{\@jur}\\
    		\MakeUppercase{FAKULTAS~}\MakeUppercase{\@fak}\\
    		\MakeUppercase{Institut Teknologi Sepuluh Nopember}\\
    		\MakeUppercase{Surabaya}\\
    		\@thn}		
    \end{flushleft}
    \addcontentsline{toc}{chapter}{HALAMAN JUDUL}
    
}
\newcommand\TitlePage{%
    \cleardoublepage\thispagestyle{empty}
    \enlargethispage{1cm}
    \begin{flushleft}
    	\includegraphics[width=35mm]{lambang-its}\\[15mm]{\color{mygreen}\makebox[\textwidth]{\rule{200cm}{8pt}}}\\
    	\vfill\noindent\textsf{%
    		PROPOSAL THESIS~ -  KM 185401\\[2ex]
    		{\fontsize{18}{2}\selectfont{\textbf{\MakeUppercase{\@juduleng}}}}\\[3ex]
    		\MakeUppercase{\@nama}\\NRP \@NRP\\[3ex]
    		\MakeUppercase{Supervisor}:\\
    		\@pbbsatu\\ \@pbbdua\mbox{}\\ \@pbbtiga\mbox{}\\[2ex]
    		MASTER PROGRAM\\
    		DEPARTMENT OF~\MakeUppercase{\@dept}\\
    		\MakeUppercase{Faculty of~}\MakeUppercase{\@fac}\\
    		\MakeUppercase{Institut Teknologi Sepuluh Nopember}\\
    		\MakeUppercase{Surabaya}\\
    		\@thn}	
    \end{flushleft}
}
\newcommand\@tglsetuju{22 Januari 2014}
\DeclareRobustCommand\TanggalDisetujui[1]{%
   \renewcommand\@tglsetuju{#1}
}

\newcommand\@tempat{U110}
\DeclareRobustCommand\Tempat[1]{%
	\renewcommand\@tempat{#1}
}


\newcommand\LembarPengesahan[1]{ %
	\renewcommand\@tempat{#1}
    \cleardoublepage
    \enlargethispage{1.5cm}
    \begin{center}
%    \large\bfseries
    LEMBAR PENGESAHAN PROPOSAL\\
   \vfill
    \MakeUppercase{\textbf{\@judul}}\\
    \vfill
    \normalfont\normalsize
    Oleh:\\
    \MakeUppercase{\@nama}\\
    NRP.~ \@NRP\\ \vfill
    
    \begin{flushright}
    \begin{tabular}{l@{}c@{ : }l@{}} %{lcl}
    Tanggal Seminar & & {\@tglsetuju} %\\	
  %  Tempat  & & {\@tempat}
    \end{tabular}
    \vspace*{2ex}
    \end{flushright}
  
    \begin{tabularx}{\textwidth}{@{}lXc@{}}
    Disetujui oleh \\[8ex]
    \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
              {\@pbbsatu & & \\
               NIP~\@NIPpbbsatu & & (Pembimbing) \\[8ex]}
               {\@pbbsatu & & \\
               NIP~\@NIPpbbsatu & & Pembimbing I\\[8ex]
               \@pbbdua & & \\
               NIP~\@NIPpbbdua & & Pembimbing II\\[8ex]}
          }
          {\@pbbsatu & &\\
            NIP~\@NIPpbbsatu & & Pembimbing \\[8ex]
            \@pbbdua & & \\
            NIP~\@NIPpbbdua && Pembimbing II \\[8ex]
            \@pbbtiga & & \\
            NIP~\@NIPpbbtiga & & Pembimbing III \\[8ex]
          }
    \ifthenelse{\equal{\@pujtiga}{}\OR\equal{\@pujtiga}{ }}
          {\ifthenelse{\equal{\@pujdua}{}\OR\equal{\@pujdua}{ }}
              {\@pujsatu & & \\
               NIP~\@NIPpujsatu && (Penguji)\\[8ex]}
               {\@pujsatu & & \\
               NIP~\@NIPpujsatu & & (Penguji)\\[8ex]
               \@pujdua && \\
               NIP~\@NIPpujdua & & (Penguji) }
          }
          {\@pujsatu &&\\
            NIP~\@NIPpujsatu & & (Penguji)\\[8ex]
            \@pujdua && \\
            NIP~\@NIPpujdua & & (Penguji) \\[8ex]
            \@pujtiga && \\
            NIP~\@NIPpujtiga & & (Penguji) \\[5ex]
          }  
    \end{tabularx}\\  %\\[5ex]
\end{center}
}
\newcommand{\katakunci}[1]{%
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        \textit{\textbf{Kata-kunci:}} & \textit{#1}
    \end{tabularx}
}
\newcommand{\keywords}[1]{%
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        \textit{\textbf{Key-words:}} & \textit{#1}
    \end{tabularx}
}
\newenvironment*{Abstrak}{%-------------------------------
  \cleardoublepage
  \begin{center}%
    {\bfseries{\MakeUppercase{\@judul}}}
    \par \vskip 2ex%
    \par%
    \begin{tabular}{lcl}
        Nama Mahasiswa &:& \@nama\\
        NRP &:& \@NRP\\
        %Jurusan &:& \@jur\space F\@faks-ITS\\
        \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
              {Pembimbing &:& \@pbbsatu\\}
              {Pembimbing &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
          }
          {Pembimbing &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\&& 3.~ \@pbbtiga}
    \end{tabular}
  \end{center}%
  \addcontentsline{toc}{chapter}{ABSTRAK}
  \begin{center}
      \textbf{Abstrak}
  \end{center}
  \itshape
  \par}{\normalfont\normalsize
}
\newenvironment*{Abstract}{%-------------------------------
  \cleardoublepage
  \begin{center}%
    {\bfseries{\MakeUppercase{\@juduleng}}}
    \par \vskip 2ex%
    \par%
    \begin{tabular}{lcl}
        Name &:& \@nama\\
        NRP &:& \@NRP\\
        %Department &:& \@dept\space F\@faks-ITS\\
        \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
              {Supervisor &:& \@pbbsatu\\}
              {Supervisors &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
          }
          {Supervisors &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\&& 3.~ \@pbbtiga}
    \end{tabular}
  \end{center}%
  \addcontentsline{toc}{chapter}{ABSTRACT}
  \textbf{Abstract}
  \itshape
  \par}{}
\newcommand{\KataPengantar}{%-----------------
    \cleardoublepage
    \vspace*{2ex}
    \centerline{\large\bfseries KATA PENGANTAR}
    \addcontentsline{toc}{chapter}{KATA PENGANTAR}
    \vspace*{20pt}
    \begin{figure}[!ht]
	\centering
	\end{figure}
}
\newcommand{\DaftarIsi}{%---------------------
    \cleardoublepage
    \pagestyle{plain}
    \renewcommand\harvardand{dan}
    \addcontentsline{toc}{chapter}{DAFTAR ISI}
    \tableofcontents
}
\newcommand{\DaftarGambar}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
    \listoffigures 
}

\newcommand{\DaftarNotasi}{%----------------------
	\renewcommand{\nomname}{DAFTAR NOTASI}
    \cleardoublepage
    \vspace*{2ex}
    \centerline{\large\bfseries DAFTAR NOTASI}
    \addcontentsline{toc}{chapter}{DAFTAR NOTASI}
}
\newcommand{\DaftarTabel}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR TABEL}
    \listoftables
}

\newcommand\BagianInti{%--------------------
    \cleardoublepage
    \mainmatter
    %\pagestyle{myheadings}
}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\gdef\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\@chapapp\space\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{\@chapapp\space#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\gdef\@makechapterhead#1{%
  \vspace*{5\p@}%
  {\parindent \z@ \centering\normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \large\bfseries \MakeUppercase\@chapapp\space \thechapter
        \par
      \fi
    \fi
    \large\bfseries\MakeUppercase{#1}\par\nobreak
    \vskip 40\p@
  }}
\gdef\@schapter#1{\@makeschapterhead{#1}%
                 \@afterheading
                 }
\gdef\@makeschapterhead#1{%
  \vspace*{5\p@}%
  {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
    \large\bfseries\MakeUppercase{#1}\par\nobreak
    \vskip 40\p@
}}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-1.5ex \@plus -1ex \@minus -.2ex}%
                                   {.01ex \@plus.2ex}%
                                   {\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1.5ex\@plus -1ex \@minus -.2ex}%
                                     {.01ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{2}{\z@}%
                                     {-.25ex\@plus -1ex \@minus -.2ex}%
                                     {.01ex \@plus.2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {.25ex \@plus1ex \@minus.2ex}%
                                    {-1.5em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand*\thechapter{\@arabic\c@chapter}
\renewcommand*\thesection{\@arabic\c@chapter.\@arabic\c@section}
%%%-------------setting daftar isi/tabel/gambar------------------
\renewcommand\@dotsep{2}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.5em \@plus\p@
    \setlength\@tempdima{5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak
      \hb@xt@\@pnumwidth{\hss #2}
      \par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{2.8em}{2.2em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5em}{2.75em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.8em}{4.1em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{6em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{5em}}
\renewcommand*\nomname{\@dottedtocline{1}{1.5em}{5em}}
%%%%%%------------------------
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \figurename\space \@arabic\c@chapter.\fi \@arabic\c@figure}
\def\fnum@figure{\nobreakspace\thefigure}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \tablename\space  \@arabic\c@chapter.\fi \@arabic\c@table}
\def\fnum@table{\nobreakspace\thetable}
\renewcommand \thenomenclature
     {\ifnum \c@chapter>\z@ \tablename\space  \@arabic\c@chapter.\fi \@arabic\c@table}
\def\fnum@table{\nobreakspace\thenomenclature}
%%%%---------------------------------
\RequirePackage{itsbib}
\citationstyle{itsbib}
\newcommand\DaftarPustaka[1]{%
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
    \bibliographystyle{itsbib}
    \bibliography{#1}
}
%%%%---------------------------------
\newcommand\BukaLampiran{%
    \cleardoublepage
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
  \addtocontents{toc}{\protect\addvspace{1ex}}%
  \addcontentsline{toc}{chapter}{LAMPIRAN}
}
%-----------------------------------
\newcommand\lampiran[1]{%
    \refstepcounter{chapter}
    \cleardoublepage
    \thispagestyle{plain}
    %\addcontentsline{toc}{chapter}{LAMPIRAN \thechapter~~ #1}
    \null
    \begin{center}
    \large\bfseries
    \MakeUppercase\appendixname\space\thechapter
    \par#1
    \end{center}
    \vskip 20\p@\par
}
%-----------------------------------
\RequirePackage{wrapfig}
\newcommand\biodata[1]{%-----------
  \newsavebox{\foto}
  \begin{wrapfigure}{l}{0.3\textwidth}
  \savebox{\foto}{\includegraphics[width=0.3\textwidth]{#1}}{\usebox\foto} 	
  %\savebox{\foto}[4.4cm][b]{\includegraphics[width=0.2\textwidth]{#1}}{\usebox\foto}
 % 	\includegraphics[width=0.2\textwidth]{FOTO}
  \end{wrapfigure}
 % \savebox{\foto}[4.4cm][b]{\includegraphics[width=4cm,height=6cm]{#1}}
  %%\parpic(4cm,6cm){\usebox\foto}
}
%%%------------- PENYESUAIAN ISTILAH ---------------------------
\renewcommand\contentsname{DAFTAR ISI}
\renewcommand\listfigurename{DAFTAR GAMBAR}
\renewcommand\listtablename{DAFTAR TABEL}
\renewcommand\nomname{DAFTAR NOTASI}
\renewcommand\bibname{DAFTAR PUSTAKA}
\renewcommand\indexname{INDEKS}
\renewcommand\figurename{Gambar}
\renewcommand\tablename{Tabel}
\renewcommand\chaptername{BAB}
%\renewcommand\algorithmname{Algoritma}
\renewcommand\appendixname{Lampiran}
\newcommand{\bm}{\textit{bipartite (min,max,+)-system}}
\newcommand{\Bm}{\textit{Bipartite (Min,Max,+)-System}}
\newcommand{\al}{aljabar max-plus}
\newcommand{\Al}{Aljabar max-plus}
\newcommand{\ls}{Latin square}
\lefthyphenmin=100
\righthyphenmin=100
\sloppy
\pagestyle{myheadings}

%%
%% end of file `TA-ITS.cls'.
