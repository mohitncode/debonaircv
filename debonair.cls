% Author - Mohit Delhiwala
% Date - 03/01/2018

\ProvidesClass{debonaircv}
\NeedsTeXFormat{LaTeX2e}

\PassOptionsToClass{\CurrentOption}{article}
\ProcessOptions\relax
\LoadClass{article}

% -----------------------------------------------------------
% Page Margins
% -----------------------------------------------------------

\RequirePackage[left=2.0cm, top=1.5cm, bottom=1.5cm, right=2.0cm, nohead, nofoot]{geometry}

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

% Load fontawesome package for social icons and apply patch
% to make them scale
\RequirePackage{fontawesome}
\DeclareFontFamily{U}{fontawesome1}{}
\DeclareFontShape{U}{fontawesome1}{m}{n}{<->FontAwesome--fontawesomeone}{}
\DeclareFontFamily{U}{fontawesome2}{}
\DeclareFontShape{U}{fontawesome2}{m}{n}{<->FontAwesome--fontawesometwo}{}
\DeclareFontFamily{U}{fontawesome3}{}
\DeclareFontShape{U}{fontawesome3}{m}{n}{<->FontAwesome--fontawesomethree}{}
\DeclareRobustCommand{\FAone}{\usefont{U}{fontawesome1}{m}{n}}
\DeclareRobustCommand{\FAtwo}{\usefont{U}{fontawesome2}{m}{n}}
\DeclareRobustCommand{\FAthree}{\usefont{U}{fontawesome3}{m}{n}}

% Disable page numbering
\pagenumbering{gobble}

% -----------------------------------------------------------
% Template Commands
% -----------------------------------------------------------

\newcommand{\vsep}{\hspace*{0.15em} | \hspace*{0.45em}}

\newcommand{\NameHeader}[1]{
  {
    \fontsize{40pt}{65pt} \color{HeadingColor} \headerfont #1
    \vspace{0.30em} \par
  }
}

\newcommand{\Email}[1]{
  { \large \faEnvelopeO \ \ }
  { \color{LinkColor} \href{mailto:#1}{#1} }
}

\newcommand{\Contact}[4]{
  { \large \faPhone \ \ }
  { \lightfont +#1 (#2) #3 #4 }
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
  \boldfont \large #1
  \hfill #2 \par
  \italicfont #3
  \newline \par
}

\newcommand{\Work}[4]{
  \boldfont \large #1
  \normalfont \small #3
  \hfill \boldfont \large #4 \par
  \italicfont #2
  \newline \par
}

\newcommand{\GitHub}[2]{
  { \Large \faGithub \ \ }
  { \href{#2}{#1} }
}

\newcommand{\LinkedIn}[2]{
  { \Large \faLinkedin \ \ }
  { \href{#2}{#1} }
}

\newcommand{\Project}[3]{
  \boldfont \large #1
  \hfill \boldfont \large #2 \par
  \normalfont \normalsize #3
  \newline \par
}