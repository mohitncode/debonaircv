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

% Add document metadata
\RequirePackage{hyperref}
\hypersetup{
  pdfauthor={Mohit Delhiwala},
  pdfcreator={Mohit Delhiwala},
  pdfproducer={Mohit Delhiwala},
  pdfkeywords={resume, template, custom},
  colorlinks=true
}

% -----------------------------------------------------------
% Template Commands
% -----------------------------------------------------------

\newcommand{\NameHeader}[1]{
  {
    \fontsize{40pt}{65pt} \color{HeadingColor} \headerfont #1 \\
  }
}

\newcommand{\Email}[1]{
  {
    \color{LinkColor} \href{mailto:#1}{#1}
  }
}