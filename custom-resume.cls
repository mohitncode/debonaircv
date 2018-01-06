% Author - Mohit Delhiwala
% Date - 03/01/2018

\ProvidesClass{custom-resume}
\NeedsTeXFormat{LaTeX2e}

\PassOptionsToClass{\CurrentOption}{article}
\ProcessOptions\relax
\LoadClass{article}

% -----------------------------------------------------------
% Page Margins
% -----------------------------------------------------------

\RequirePackage[left=2.0cm, top=2.0cm, bottom=2.0cm, right=2.0cm, nohead, nofoot]{geometry}

% -----------------------------------------------------------
% Fonts
% -----------------------------------------------------------

\RequirePackage[quiet]{fontspec}

\newfontfamily\bodyfont{Roboto-Regular}[Path=fonts/]
\newfontfamily\headerfont{Roboto-Thin}[Path=fonts/]
\newfontfamily\lightfont{Roboto-Light}[Path=fonts/]
\newfontfamily\boldfont{RobotoCondensed-Bold}[Path=fonts/]
\newfontfamily\italicfont{Roboto-LightItalic}[Path=fonts/]

\setmainfont{Roboto-Regular}[Path=fonts/]

% -----------------------------------------------------------
% Colors
% -----------------------------------------------------------

\RequirePackage{xcolor}

\definecolor{HeadingColor}{HTML}{DE472F}
\definecolor{LinkColor}{HTML}{D45327}

% -----------------------------------------------------------
% Other Tweaks
% -----------------------------------------------------------

% Reduce vertical space between list items to conserve space
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep}
\setlist[itemize]{nolistsep}
\setlist[enumerate]{noitemsep}
\setlist[enumerate]{nolistsep}

% Add document metadata
\RequirePackage{hyperref}
\hypersetup{
  pdfauthor={Mohit Delhiwala},
  pdfcreator={Mohit Delhiwala},
  pdfproducer={Mohit Delhiwala},
  pdfkeywords={resume, template, custom},
  colorlinks=true,
  urlcolor=LinkColor
}

% Disable page numbering
\pagenumbering{gobble}

% -----------------------------------------------------------
% Template Commands
% -----------------------------------------------------------

\newcommand{\vsep}{\hspace*{0.3em} | \hspace*{1.0em}}

\newcommand{\NameHeader}[1]{
  {
    \fontsize{40pt}{65pt} \color{HeadingColor} \headerfont #1
    \vspace{0.25em} \par
  }
}

\newcommand{\Email}[1]{
  { \color{LinkColor} \href{mailto:#1}{#1} }
}

\newcommand{\Contact}[4]{
  { \lightfont +#1\textendash(#2)\textendash#3\textendash#4 }
}

\newcommand{\CVSection}[1]{
  {
    \color{HeadingColor}
    \section*{\MakeUppercase{#1}}
    \vspace{-5mm}
    \rule{\textwidth}{0.4pt}
    \vspace{-2mm} \par
  }
}

\newcommand{\Education}[3]{
  {
    \boldfont \large #1
    \hfill #2 \par
  }
  { \italicfont #3 }
  \newline \par
}
