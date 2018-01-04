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

% -----------------------------------------------------------
% Colors
% -----------------------------------------------------------

\RequirePackage{xcolor}

\definecolor{HeadingColor}{HTML}{DE472F}

% -----------------------------------------------------------
% Template Commands
% -----------------------------------------------------------

\newcommand{\NameHeader}[1]{
  \fontsize{40pt}{65pt} \color{HeadingColor} \headerfont #1
}