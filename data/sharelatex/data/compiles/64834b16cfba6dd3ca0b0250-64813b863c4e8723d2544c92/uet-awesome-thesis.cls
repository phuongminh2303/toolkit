\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uet-awesome-thesis}[2021/12/28 University of Engineering and Technology Thesis Class]

\newcommand{\mylanguage}{en}

\DeclareOption{en}{\renewcommand{\mylanguage}{en}}
\DeclareOption{vi}{\renewcommand{\mylanguage}{vi}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[oneside]{book}
\usepackage{scrextend}
\changefontsizes{13pt}

% Required packages
% \RequirePackage{times}
% \RequirePackage{mathptmx}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[toc,acronym]{glossaries}
\RequirePackage{glossary-mcols}
\RequirePackage{here}
\RequirePackage[toc]{appendix}

\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{mathspec} %loads fontspec as well
\RequirePackage{fontspec}
% \setmainfont{Times New Roman}
% \setmainfont{SVN-Times New Roman.ttf}
\setromanfont{Times-New-Roman}[
    Path=./Times-New-Roman/,
    Extension = .ttf,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    BoldItalicFont=*-BoldItalic
]
\RequirePackage[inline]{enumitem}

%\RequirePackage[numbers, comma, sort&compress]{natbib}
\RequirePackage[super]{natbib}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\RequirePackage[palatino]{quotchap}
\RequirePackage{ragged2e}
% colors
\RequirePackage{color}
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}

\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black,
}

\RequirePackage{url}
\RequirePackage[titles]{tocloft}

\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

\renewcommand{\cftchapfont}{\normalsize \scshape}
\setlength{\parindent}{1cm}
\setlength{\parskip}{6pt}

\RequirePackage{pdfsync} %do pdf synchronization [andy]
\RequirePackage[
    type={CC},
    modifier={by-nc-sa},
    version={3.0},
]{doclicense}

% \usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
% \RequirePackage{afterpage} 

\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
\nobibliography*        

% \RequirePackage{lettrine} % big letter at start of chapter
\RequirePackage[a4paper]{geometry}
\geometry{left=3cm, right=2cm, top=2.5cm, bottom=3cm}

\RequirePackage{fancyhdr} 
\pagestyle{empty} % options: empty , plain , fancy
\fancyhf{}
\fancyfoot[C]{\thepage} % Page number in the header
\fancyhead[]{} % Remove chapter name from the header

% \RequirePackage[palatino]{quotchap} % chaper number 
% \definecolor{chaptergrey}{rgb}{0.6,0,0}

\RequirePackage{afterpage} 


\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={bf},justification=RaggedRight,margin=0pt, figurewithin=section, tablewithin=section]{caption}
\RequirePackage{longtable}
\RequirePackage{tabularray}
\DefTblrTemplate{caption}{default}{}    % Removes a caption
\DefTblrTemplate{capcont}{default}{}    % Removes a caption on subsequent pages
\DefTblrTemplate{contfoot}{default}{} 

% line alignment
\linespread{1.3}
\addtolength{\footnotesep}{\footnotesep}
\justifying
%\raggedright

% \titleformat{\chapter}[display]
%   {\normalfont\LARGE\bfseries\centering}{Chương\ \thechapter}{0pt}{}

\titleformat{\chapter}[display]
  {\normalfont\fontsize{16}{1}\selectfont\bfseries\centering}{Chương\ \thechapter}{0pt}{}
\titlespacing*{\chapter}{0pt}{-50pt}{0pt}

\titleformat{\section}
  {\normalfont\bfseries}
  {\thesection}{0.5em}{}

\titlespacing*{\section}{0pt}{-10pt}{0.2\baselineskip}

\titleformat{\subsection}
  {\normalfont\bfseries}
  {\thesubsection}{0.5em}{}
  
\titlespacing*{\subsection}{0pt}{0pt}{0pt}

\titleformat{\subsubsection}[runin]
  {\bf}
  {\thesubsection}{0.5em}{}

\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}

\titleformat{\paragraph}[runin]
  {\it}
  {}{1em}{}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\major#1{\gdef\@major{#1}}


\newcommand{\isenglish}[3][\mylanguage]{
    \ifthenelse{\equal{#1}{en}}{#2}{#3}
}

\isenglish{
    \RequirePackage[english]{babel}
}{
    \RequirePackage[vietnamese]{babel}
}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{decorations.pathmorphing}
\renewcommand{\maketitle}{ 
	\singlespacing
	\thispagestyle{empty}
% 	\vspace*{\fill} 
    % \vspace{150pt} 
    \begin{tikzpicture}[overlay,remember picture]
    \draw [line width=1.5mm]
        ($ (current page.north west) + (3cm,-2cm) $)
        rectangle
        ($ (current page.south east) + (-2cm,3cm) $);
    \draw [line width=0.5mm]
        ($ (current page.north west) + (3.2cm,-2.2cm) $)
        rectangle
        ($ (current page.south east) + (-2.2cm,3.2cm) $);
    \end{tikzpicture}
    
    \begin{center}
        \begin{large}\fontsize{14pt}{1}\selectfont \MakeUppercase{\@university} \end{large} \\[0.2cm]
        \begin{large}\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{Trường đại học y dược}} \end{large} \\[1cm]
        \begin{large}\fontsize{14pt}{1}\selectfont 
         {\includegraphics[scale=0.4]{pictures/VNU-UMP-logo.jpeg} \\ [2cm]}
        \textbf{\MakeUppercase{\@author}} \end{large} \\[2cm]
        {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{\@title}}}\\[1cm]
    
        {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{Khoá luận tốt nghiệp đại học}}}\\[0cm]
        {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{ngành răng hàm mặt}}}\\[0.3cm]
        % {\fontsize{14pt}{1}\selectfont \textbf{\isenglish{Major}{Ngành}: \@major}}\\[3.5cm]
    
        \vspace*{\fill}{\fontsize{14pt}{1}\selectfont \textbf{\@universitycity, \@degreeyear}}\\
    \end{center} 
	\newpage
}

\newcommand{\makesidecover}{ 
	\singlespacing
	\thispagestyle{empty}
% 	\vspace*{\fill} 
    % \vspace{150pt} 
    \begin{tikzpicture}[overlay,remember picture]
    \draw [line width=1.5mm]
        ($ (current page.north west) + (3cm,-2cm) $)
        rectangle
        ($ (current page.south east) + (-2cm,3cm) $);
    \draw [line width=0.5mm]
        ($ (current page.north west) + (3.2cm,-2.2cm) $)
        rectangle
        ($ (current page.south east) + (-2.2cm,3.2cm) $);
    \end{tikzpicture}
    
    \begin{center}
        \begin{large}\fontsize{14pt}{1}\selectfont \MakeUppercase{\@university} \end{large} \\[0.2cm]
        \begin{large}\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{Trường đại học y dược}} \end{large} \\[0.5cm]
        \vspace{3cm}
        Người thực hiện: \begin{large}\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{\@author}} \end{large} \\[2cm]
        \vspace{1cm}
        {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{\@title}}}\\[1cm]
    
        {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{Khoá luận tốt nghiệp đại học}}}\\[0cm]
        {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{ngành răng hàm mặt}}}\\[2cm]
    \end{center} 

    \begin{flushleft}
            \hspace{2.5cm}Khoá: {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{QH.2017.Y}}}\\[0.2cm]
        \hspace{2.5cm}\textbf{Người hướng dẫn:} {\fontsize{14pt}{1}\selectfont \textbf{\MakeUppercase{PGS.TS. Phạm Như Hải }}}\\
    \end{flushleft}
    
    
    \vspace*{\fill}
    
    \begin{center}
	{\fontsize{14pt}{1}\selectfont \textbf{\@universitycity, \@degreeyear}}\\
	\end{center}
	\newpage
}

\def\authorclass#1{\gdef\@authorclass{#1}}
\def\duration#1{\gdef\@duration{#1}}
\def\statement#1{\gdef\@statement{#1}}
\def\declaration#1{\gdef\@declaration{#1}}

% You might also consider licensing your work under Creative Commons). See: http://creativecommons.org/weblog/entry/12824 for other PhD students who have released their work under creative commons.

\newcommand{\abstractpage}{
        \isenglish{\chapter*{ĐẶT VẤN ĐỀ}}{\chapter*{ĐẶT VẤN ĐỀ}} 
	% \newpage
	\pagestyle{fancy}
	\renewcommand{\headrulewidth}{0.0pt} 
	% \begin{center}
	% {\LARGE\bfseries\centering ĐẶT VẤN ĐỀ}
        % {\fontsize{18pt}{1}\selectfont\centering \textbf{\MakeUppercase{ĐẶT VẤN ĐỀ}}}
        % \isenglish{\chapter*{ĐẶT VẤN ĐỀ}}{\chapter*{ĐẶT VẤN ĐỀ}} 
        % --> dòng trên tạo ra 1 page mới empty
	% \end{center}
	\setstretch{1.3} %Harvard registrar requests that abstract is double spaced
}

\newcommand{\dedicationpage}[1]{
	\pagestyle{fancy}
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\sc \noindent #1
	\vspace*{\fill} \newpage \rm
	}

% the list of authors
\newcommand{\authorlist}[1]{
	\pagestyle{fancy}
	\newpage
	\thispagestyle{fancy} 
	\isenglish{\chapter*{Author List}}{\chapter*{Danh sách tác giả}}
	\noindent #1
	\newpage \rm
	}
	

% the acknowledgments page
\newcommand{\acknowledgments}[1]{
    \thispagestyle{empty}
    \isenglish{\chapter*{Acknowledgments}}{\chapter*{Lời cảm ơn}}
    \pagestyle{fancy}
	\noindent
	\onehalfspacing
	#1
	\vspace*{\fill} 
	\newpage
}

\newcommand{\authorship}{
    \isenglish{\chapter*{LỜI CẢM ƠN}}{\chapter*{Tuyên thệ của tác giả}}
    \thispagestyle{empty}
    \vspace{0.5cm}
    %\pagestyle{fancy}
	\noindent 
 \qquad Tôi xin trân trọng cảm ơn Ban Giám Hiệu, Ban lãnh đạo, Phòng đào tạo, Khoa Răng Hàm Mặt - Trường Đại học Y Dược - Đại học Quốc gia Hà Nội đã giúp đỡ và tạo điều kiện cho tôi trong suốt quá trình học tập và tiến hành nghiên cứu để tôi có thể hoàn thành luận án này.\par
\quad Tôi xin bày tỏ lòng biết ơn sâu sắc tới PGS. TS. Phạm Như Hải - Phó Hiệu Trưởng trường Đại học Y Dược - Đại học Quốc gia Hà Nội, người thầy đã dìu dắt tôi trong suốt quá trình học tập, công tác và đã tận tình giúp đỡ hướng dẫn tôi hoàn thành công trình nghiên cứu này.\par
\quad Tôi xin chân thành cảm ơn các anh chị em và bạn bè đã quan tâm động viên, giúp đỡ tôi trong quá trình học tập và nghiên cứu.\par
\quad Tôi xin chân thành cảm ơn tất cả các người bệnh tham gia nghiên cứu đã tạo điều kiện thuận lợi cho tôi hoàn thành luận án này.\par
\quad Cuối cùng tôi xin được dành tình thương yêu và lòng biết ơn sâu sắc đến những người thân trong gia đình, những người đã thông cảm, động viên và giúp đỡ tôi trong suốt quá trình học tập và nghiên cứu.\par
\quad\textit{Xin trân trọng cảm ơn!}
	\vspace*{\fill} 
	\newpage
}

\newcommand{\approval}{
    \isenglish{\chapter*{LỜI CAM ĐOAN}}{\chapter*{Xác nhận của cán bộ hướng dẫn}}
    \thispagestyle{empty}
    \vspace{0.5cm}
    %\pagestyle{fancy}
	\noindent 
 \qquad Tôi xin cam đoan đây là công trình nghiên cứu của riêng tôi. Các số liệu, kết quả nêu trong luận án là trung thực và chưa từng được ai công bố trong bất kỳ công trình nào khác. \\ [2cm]
 \begin{flushright}
    \textbf{Nguyễn Thu Trà}\hspace{2cm} \par
\end{flushright}

    \noindent 
	\vspace*{\fill} 
}
	
% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}

% An environment for sign box
\newcommand{\signbox}[2]{
\begin{minipage}{0.5\linewidth}
\end{minipage}\hfill
\begin{minipage}{0.45\linewidth}
\begin{flushright}
\vbox{
    \begin{center}
	\textit{\@universitycity, \isenglish{date}{ngày} \space \space \space \isenglish{month}{tháng} \space \space \space \isenglish{year}{năm} \@degreeyear}
	\\ #1
	\\~
	\\~
	\\ \textit{#2}
	\end{center}
}
\end{flushright}
\end{minipage}
}

% \dotline and \dotfill
\def\dotfill#1{\cleaders\hbox to #1{.}\hfill}
\newcommand\dotline[2][.5em]{\leavevmode\hbox to #2{\dotfill{#1}\hfil}}

\renewenvironment{savequote}[1][10cm]{%
\begin{lrbox}{\@quotebox}
\noindent
\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lr|}
&\begin{minipage}[t]{#1}\footnotesize\quotefont
\ignorespaces
}{%
\end{minipage}
\end{tabular*}
\end{lrbox}
\global\setbox\@quotebox\copy\@quotebox
\global\let\@printcites\@iprintcites
\ignorespacesafterend}


% remove hyperlink, mostly used for citation in caption and headline
\newcommand{\nohyper}[1]{\protect\NoHyper#1\protect\endNoHyper}

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of Figures}
\addto\captionsenglish{\renewcommand{\figurename}{HÌNH}}
\addto\captionsenglish{\renewcommand{\tablename}{BẢNG}}
\addto\captionsenglish{\renewcommand{\contentsname}{MỤC LỤC}}
\addto\captionsenglish{\renewcommand{\appendices}{PHỤ LỤC}}
\addto\captionsenglish{\renewcommand{\acronymname}{DANH MỤC CÁC KÝ HIỆU VIẾT TẮT}}
\addto\captionsenglish{\renewcommand{\listfigurename}{DANH MỤC HÌNH ẢNH}}
\addto\captionsenglish{\renewcommand{\listtablename}{DANH MỤC BẢNG BIỂU}}
\addto\captionsenglish{\renewcommand{\bibname}{TÀI LIỆU THAM KHẢO}}

\setcitestyle{super}

% undo the wrong changes made by mathspec
\makeatletter 
\let\RequirePackage\original@RequirePackage
\let\usepackage\RequirePackage
\makeatother