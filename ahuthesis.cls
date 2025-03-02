%%
%% This is file `ahuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ahuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2024-2025 by Anhui University <liu@ahu.edu.cn>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{ahuthesis}
[2025/03/01 1.0 Anhui University Thesis Template]
\newcommand\ahu@error[1]{%
  \ClassError{ahuthesis}{#1}{}%
}
\newcommand\ahu@warning[1]{%
  \ClassWarning{ahuthesis}{#1}%
}
\newcommand\ahu@debug[1]{%
  \typeout{Package ahuthesis Info: #1}%
}
\newcommand\ahu@patch@error[1]{%
  \ahu@error{Failed to patch command \protect#1}%
}
\newcommand\ahu@deprecate[2]{%
  \def\ahu@@tmp{#2}%
  \ahu@warning{%
    The #1 is deprecated%
    \ifx\ahu@@tmp\@empty\else
      . Use #2 instead%
    \fi
  }%
}
\@ifl@t@r\fmtversion{2017/04/15}{}{
  \ahu@error{%
    TeX Live 2017 or later version is required to compile this document%
  }
}
\RequirePackage{iftex}
\ifXeTeX\else
  \ifLuaTeX\else
    \ahu@error{XeLaTeX or LuaLaTeX is required to compile this document}
  \fi
\fi
\hyphenation{Ahu-Thesis}
\def\ahuthesis{ahuthesis}
\def\version{1.0}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=ahu,
  prefix=ahu@,
  setkeys=\kvsetkeys}
\let\ahu@setup@hook\@empty
\newcommand\ahusetup[1]{%
  \let\ahu@setup@hook\@empty
  \kvsetkeys{ahu}{#1}%
  \ahu@setup@hook
}
\newcommand\ahu@define@key[1]{%
  \kvsetkeys{ahu@key}{#1}%
}
\kv@set@family@handler{ahu@key}{%
  \@namedef{ahu@#1@@name}{#1}%
  \def\ahu@@default{}%
  \def\ahu@@choices{}%
  \kv@define@key{ahu@value}{name}{%
    \@namedef{ahu@#1@@name}{##1}%
  }%
  \@namedef{ahu@#1@@check}{}%
  \@namedef{ahu@#1@@code}{}%
  \kv@define@key{ahu@value}{choices}{%
    \def\ahu@@choices{##1}%
    \@namedef{ahu@#1@@reset}{}%
    \@namedef{ahu@#1@@check}{%
      \@ifundefined{%
        ifahu@\@nameuse{ahu@#1@@name}@\@nameuse{ahu@\@nameuse{ahu@#1@@name}}%
      }{%
        \ahu@error{Invalid value "#1 = \@nameuse{ahu@\@nameuse{ahu@#1@@name}}"}%
      }%
      \@nameuse{ahu@#1@@reset}%
      \@nameuse{ahu@\@nameuse{ahu@#1@@name}@\@nameuse{ahu@\@nameuse{ahu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{ahu@value}{default}{%
    \def\ahu@@default{##1}%
  }%
  \kvsetkeys{ahu@value}{#2}%
  \@namedef{ahu@\@nameuse{ahu@#1@@name}}{}%
  \kv@set@family@handler{ahu@choice}{%
    \ifx\ahu@@default\@empty
      \def\ahu@@default{##1}%
    \fi
    \expandafter\newif\csname ifahu@\@nameuse{ahu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname ahu@#1@@reset\endcsname{%
      \@nameuse{ahu@\@nameuse{ahu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{ahu@choice}{\ahu@@choices}%
  \expandafter\let\csname ahu@\@nameuse{ahu@#1@@name}\endcsname\ahu@@default
  \expandafter\ifx\csname ahu@\@nameuse{ahu@#1@@name}\endcsname\@empty\else
    \@nameuse{ahu@#1@@check}%
  \fi
  \kv@define@key{ahu}{#1}{%
    \@namedef{ahu@\@nameuse{ahu@#1@@name}}{##1}%
    \@nameuse{ahu@#1@@check}%
    \@nameuse{ahu@#1@@code}%
  }%
}
\newcommand\ahu@option@hook[2]{%
  \expandafter\g@addto@macro\csname ahu@#1@@code\endcsname{#2}%
}
\ahu@define@key{
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = doctor,
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  main-language = {
    name = main@language,
    choices = {
      chinese,
      english,
    },
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
  system = {
    choices = {
      auto,
      mac,
      unix,
      windows,
    },
    default = auto,
  },
  fontset = {
    choices = {
      auto,
      windows,
      mac,
      ubuntu,
    },
    default = auto,
  },
  font = {
    choices = {
      auto,
      times,
      termes,
      xits,
      newcm,
    },
    default = auto,
  },
  cjk-font = {
    name = cjk@font,
    choices = {
      auto,
      windows,
      windows-local,
      mac,
      mac-word,
      noto,
    },
    default = auto,
  },
  windows-font-dir = {
    name = windows@font@dir,
    default = {.},
  },
  math-font = {
    name = math@font,
    choices = {
      auto,
      xits,
      newcm,
    },
    default = auto,
  },
  output = {
    choices = {
      print,
      electronic,
    },
    default = print,
  },
}
\newif\ifahu@degree@graduate
\newcommand\ahu@set@graduate{%
  \ahu@degree@graduatefalse
  \ifahu@degree@doctor
    \ahu@degree@graduatetrue
  \fi
  \ifahu@degree@master
    \ahu@degree@graduatetrue
  \fi
}
\ahu@set@graduate
\ahu@option@hook{degree}{%
  \ahu@set@graduate
}
\DeclareBoolOption[false]{openright}
\DeclareComplementaryOption{openany}{openright}
\DeclareBoolOption[true]{raggedbottom}
\DeclareBoolOption[false]{nocolor}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\ifahu@openright
  \PassOptionsToClass{openright}{book}
\else
  \PassOptionsToClass{openany}{book}
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain]{ctexbook}[2017/04/01]
\setCJKfamilyfont{STXingka}{STXingka.ttf}
\newcommand{\STXingka}{\CJKfamily{STXingka}}
\RequirePackage{etoolbox}
\RequirePackage{filehook}
\RequirePackage{xparse}
\RequirePackage{geometry}%
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{notoccite}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\AtEndPreamble{
  \ifx\tikzifexternalizing\@undefined\else
    \tikzifexternalizing{
      \renewcommand*\includepdf[2][]{}
    }{}
  \fi
}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifahu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifXeTeX
  \RequirePackage{xeCJKfntef}
\else
  \RequirePackage{ulem}
\fi
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{url}
\newcommand\ahu@package@conflict[2]{%
  \AtEndOfPackageFile*{#1}{%
    \AtBeginOfPackageFile*{#2}{%
      \ahu@error{The "#2" package is incompatible with "#1"}%
    }%
  }%
}
\ahu@package@conflict{bibunits}{biblatex}
\ahu@package@conflict{bibunits}{chapterbib}
\ahu@package@conflict{bibunits}{multibib}

\ahu@package@conflict{unicode-math}{amscd}
\ahu@package@conflict{unicode-math}{amsfonts}
\ahu@package@conflict{unicode-math}{amssymb}
\ahu@package@conflict{unicode-math}{bbm}
\ahu@package@conflict{unicode-math}{bm}
\ahu@package@conflict{unicode-math}{mathrsfs}

\ahu@package@conflict{natbib}{biblatex}
\ahu@package@conflict{natbib}{cite}
\geometry{
  paper          = a4paper,  % 210 * 297mm
}
\newcommand\ahu@set@geometry{%
  \ifahu@degree@bachelor
    \geometry{
      top        = 3.8cm,
      bottom     = 3.2cm,
      left       = 3cm,
      right      = 3cm,
      headheight = 1.9cm,
      headsep    = 1.9cm,
      footskip   = 1.45cm,
    }%
  \else
    \geometry{
      top     = 2.5cm,
      bottom  = 2.5cm,
      left    = 2.5cm,
      right   = 2.5cm,
    }%
  \fi
}
\ahu@set@geometry
\ahu@option@hook{degree}{\ahu@set@geometry}
\ahu@option@hook{output}{\ahu@set@geometry}
\ahusetup{main-language=\ahu@language}%
\let\ahu@main@language\ahu@language
\ahu@option@hook{language}{%
  \ifx\@begindocumenthook\@undefined\else
    \ahusetup{main-language=\ahu@language}%
    \let\ahu@main@language\ahu@language
  \fi
}
\newcommand\ahu@reset@main@language{%
  \ahusetup{language = \ahu@main@language}%
  \let\ahu@language\ahu@main@language
}
\newcommand\ahu@set@chapter@names{%
  \ifahu@main@language@chinese
    \def\bibname{参考文献}%
    \def\appendixname{附录}%
    \def\indexname{索引}%
    \ifahu@degree@bachelor
      \def\contentsname{目\qquad 录}%
      \def\listfigurename{插图索引}%
      \def\listtablename{表格索引}%
      \def\ahu@list@figure@table@name{插图和附表索引}%
      \def\ahu@list@algorithm@name{算法索引}%
      \def\ahu@acknowledgements@name{致\qquad 谢}%
      \def\listequationname{公式索引}%
      \def\ahu@denotation@name{主要符号表}%
      \def\ahu@resume@name{在学期间参加课题的研究成果}%
    \else
      \def\listfigurename{插图清单}%
      \def\listtablename{附表清单}%
      \def\ahu@list@figure@table@name{插图和附表清单}%
      \def\ahu@list@algorithm@name{算法清单}%
      \def\listequationname{公式清单}%
      \def\ahu@acknowledgements@name{致\quad 谢}%
      \ifahu@degree@doctor
        \def\contentsname{目\quad 录}%
        \def\ahu@denotation@name{符号和缩略语说明}%
        \def\ahu@resume@name{攻读博士学位期间取得的研究成果}%
      \else
      \ifahu@degree@master
        \def\contentsname{目\qquad 次}%
        \def\ahu@denotation@name{符号表}%
        \def\ahu@resume@name{攻读硕士学位期间取得的学术成果}%
      \else
        \def\contentsname{目\qquad 次}%
        \def\ahu@denotation@name{符号表}%
        \def\ahu@resume@name{个人简历、发表的学术论文与科研成果}%
      \fi
      \fi
    \fi
  \else
    \ifahu@main@language@english
      \def\indexname{Index}%
      \ifahu@degree@bachelor
        \def\contentsname{CONTENTS}%
        \def\listfigurename{FIGURES}%
        \def\listtablename{TABLES}%
        \def\ahu@list@figure@table@name{FIGURES AND TABLES}%
        \def\ahu@list@algorithm@name{ALGORITHMS}%
        \def\listequationname{EQUATIONS}%
        \def\ahu@denotation@name{ABBREVIATIONS}%
        \def\bibname{REFERENCES}%
        \def\appendixname{APPENDIX}%
        \def\ahu@acknowledgements@name{ACKNOWLEDGEMENTS}%
        \def\ahu@resume@name{PUBLICATIONS}%
      \else
        \def\contentsname{Table of Contents}%
        \def\listfigurename{List of Figures}%
        \def\listtablename{List of Tables}%
        \def\ahu@list@figure@table@name{List of Figures and Tables}%
        \def\ahu@list@algorithm@name{List of Algorithms}%
        \def\listequationname{List of Equations}%
        \def\ahu@denotation@name{List of Symbols and Acronyms}%
        \def\bibname{References}%
        \def\appendixname{Appendix}%
        \def\ahu@acknowledgements@name{Acknowledgements}%
        \def\ahu@resume@name{Resume}%
      \fi
    \fi
  \fi
}
\ahu@set@chapter@names
\ahu@option@hook{degree}{\ahu@set@chapter@names}
\ahu@option@hook{main-language}{\ahu@set@chapter@names}
\newcommand\ahu@set@names{%
  \ifahu@language@chinese
    \ctexset{
      figurename = 图,
      tablename  = 表,
    }%
    \def\ahu@algorithm@name{算法}%
    \def\ahu@equation@name{公式}%
    \def\ahu@assumption@name{假设}%
    \def\ahu@definition@name{定义}%
    \def\ahu@proposition@name{命题}%
    \def\ahu@lemma@name{引理}%
    \def\ahu@theorem@name{定理}%
    \def\ahu@axiom@name{公理}%
    \def\ahu@corollary@name{推论}%
    \def\ahu@exercise@name{练习}%
    \def\ahu@example@name{例}%
    \def\ahu@remark@name{注释}%
    \def\ahu@problem@name{问题}%
    \def\ahu@conjecture@name{猜想}%
    \def\ahu@claim@name{断言}%
    \def\ahu@proof@name{证明}%
    \def\ahu@theorem@separator{: }%
  \else
    \ifahu@language@english
      \ctexset{
        figurename = {Figure},
        tablename  = {Table},
      }%
      \def\ahu@algorithm@name{Algorithm}%
      \def\ahu@equation@name{Equation}%
      \def\ahu@assumption@name{Assumption}%
      \def\ahu@definition@name{Definition}%
      \def\ahu@proposition@name{Proposition}%
      \def\ahu@lemma@name{Lemma}%
      \def\ahu@theorem@name{Theorem}%
      \def\ahu@axiom@name{Axiom}%
      \def\ahu@corollary@name{Corollary}%
      \def\ahu@exercise@name{Exercise}%
      \def\ahu@example@name{Example}%
      \def\ahu@remark@name{Remark}%
      \def\ahu@problem@name{Problem}%
      \def\ahu@claim@name{Claim}%
      \def\ahu@conjecture@name{Conjecture}%
      \def\ahu@proof@name{Proof}%
      \def\ahu@theorem@separator{: }%
    \fi
  \fi
}
\ahu@set@names
\ahu@option@hook{language}{\ahu@set@names}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip 6bp%
  \abovedisplayshortskip 6bp%
  \belowdisplayshortskip 6bp%
  \belowdisplayskip \abovedisplayskip
}
\normalsize
\ifx\MakeRobust\@undefined \else
    \MakeRobust\normalsize
\fi
\def\ahu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\ahu@def@fontsize{chuhao}{42bp}
\ahu@def@fontsize{xiaochu}{36bp}
\ahu@def@fontsize{yihao}{26bp}
\ahu@def@fontsize{xiaoyi}{24bp}
\ahu@def@fontsize{erhao}{22bp}
\ahu@def@fontsize{xiaoer}{18bp}
\ahu@def@fontsize{sanhao}{16bp}
\ahu@def@fontsize{xiaosan}{15bp}
\ahu@def@fontsize{sihao}{14bp}
\ahu@def@fontsize{xiaosi}{12bp}
\ahu@def@fontsize{wuhao}{10.5bp}
\ahu@def@fontsize{xiaowu}{9bp}
\ahu@def@fontsize{liuhao}{7.5bp}
\ahu@def@fontsize{xiaoliu}{6.5bp}
\ahu@def@fontsize{qihao}{5.5bp}
\ahu@def@fontsize{bahao}{5bp}
\ifahu@system@auto
  \IfFileExists{/System/Library/Fonts/Menlo.ttc}{
    \ahusetup{system = mac}
  }{
    \IfFileExists{/dev/null}{
      \IfFileExists{null:}{
        \ahusetup{system = windows}
      }{
        \ahusetup{system = unix}
      }
    }{
      \ahusetup{system = windows}
    }
  }
  \ahu@debug{Detected system: \ahu@system}
\fi
\newcommand\ahu@mac@word@font@dir{%
  /Applications/Microsoft Word.app/Contents/Resources/DFonts%
}
\ifahu@fontset@auto
  \ifahu@system@windows
    \ahusetup{fontset = windows}
  \else
    \IfFontExistsTF{SimSun}{
      \ahusetup{fontset = windows}
    }{
      \IfFileExists{\ahu@windows@font@dir/Simsun.ttc}{
        \ahusetup{fontset = windows, cjk-font = windows-local}
      }{
        \IfFileExists{\ahu@mac@word@font@dir/Simsun.ttc}{
          \ahusetup{fontset = windows, cjk-font = mac-word}
        }{
          \ifahu@system@mac
            \ahusetup{fontset = mac}
          \else
            \IfFontExistsTF{Noto Serif CJK SC}{
              \ahusetup{fontset = ubuntu}
            }{
            }
          \fi
        }
      }
    }
  \fi
  \ahu@debug{Detected fontset: \ahu@fontset}
\fi
\newcommand\ahu@set@font{%
  \@nameuse{ahu@set@font@\ahu@font}%
}
\ahu@option@hook{font}{\ahu@set@font}
\newcommand\ahu@set@font@auto{%
  \ifahu@font@auto
    \ifahu@fontset@windows
      \ahusetup{font=times}%
    \else
      \ifahu@fontset@mac
        \ahusetup{font=times}%
      \else
        \ahusetup{font=termes}%
      \fi
    \fi
  \fi
}
\ahu@option@hook{math-font}{\g@addto@macro\ahu@setup@hook{\ahu@set@font@auto}}
\AtBeginOfPackageFile*{siunitx}{\ahu@set@font@auto}
\AtEndPreamble{\ahu@set@font@auto}
\newcommand\ahu@set@font@times{%
  \setmainfont{Times New Roman}%
  \setsansfont{Arial}%
  \ifahu@fontset@mac
    \setmonofont{Menlo}[Scale = MatchLowercase]%
  \else
    \setmonofont{Courier New}[Scale = MatchLowercase]%
  \fi
}
\newcommand\ahu@set@font@termes{%
  \setmainfont{texgyretermes}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \ahu@set@texgyre@sans@mono
}
\newcommand\ahu@set@texgyre@sans@mono{%
  \setsansfont{texgyreheros}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmonofont{texgyrecursor}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
    Ligatures      = CommonOff,
  ]%
}
\let\ahu@font@family@xits\@empty
\newcommand\ahu@set@xits@names{%
  \ifx\ahu@font@family@xits\@empty
    \IfFontExistsTF{XITSMath-Regular.otf}{%
      \gdef\ahu@font@family@xits{XITS}%
      \gdef\ahu@font@style@xits@rm{Regular}%
      \gdef\ahu@font@style@xits@bf{Bold}%
      \gdef\ahu@font@style@xits@it{Italic}%
      \gdef\ahu@font@style@xits@bfit{BoldItalic}%
      \gdef\ahu@font@name@xits@math{XITSMath-Regular}%
    }{%
      \gdef\ahu@font@family@xits{xits}%
      \gdef\ahu@font@style@xits@rm{regular}%
      \gdef\ahu@font@style@xits@bf{bold}%
      \gdef\ahu@font@style@xits@it{italic}%
      \gdef\ahu@font@style@xits@bfit{bolditalic}%
      \gdef\ahu@font@name@xits@math{xits-math}%
    }%
  \fi
}
\newcommand\ahu@set@font@xits{%
  \ahu@set@xits@names
  \setmainfont{\ahu@font@family@xits}[
    Extension      = .otf,
    UprightFont    = *-\ahu@font@style@xits@rm,
    BoldFont       = *-\ahu@font@style@xits@bf,
    ItalicFont     = *-\ahu@font@style@xits@it,
    BoldItalicFont = *-\ahu@font@style@xits@bfit,
  ]%
  \ahu@set@texgyre@sans@mono
}
\newcommand\ahu@set@font@newcm{%
  \setmainfont{NewCM10}[
    Extension      = .otf,
    UprightFont    = *-Book,
    BoldFont       = *-Bold,
    ItalicFont     = *-BookItalic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \setsansfont{NewCMSans10}[
    Extension         = .otf,
    UprightFont       = *-Book,
    BoldFont          = *-Bold,
    ItalicFont        = *-BookOblique,
    BoldItalicFont    = *-BoldOblique,
  ]%
  \setmonofont{NewCMMono10}[
    Extension           = .otf,
    UprightFont         = *-Book,
    ItalicFont          = *-BookItalic,
    BoldFont            = *-Bold,
    BoldItalicFont      = *-BoldOblique,
  ]%
}
\ifahu@cjk@font@auto
  \ifahu@fontset@mac
    \ahusetup{cjk-font = mac}
  \else
    \ifahu@fontset@windows
      \IfFontExistsTF{SimSun}{
        \ahusetup{cjk-font = windows}
      }{
        \IfFileExists{\ahu@windows@font@dir/Simsun.ttc}{
          \ahusetup{cjk-font = windows-local}
        }{
          \IfFileExists{\ahu@mac@word@font@dir/Simsun.ttc}{
            \ahusetup{cjk-font = mac-word}
          }{
            \ahu@error{Cannot find "SimSun" font}
          }
        }
      }
    \else
      \ifahu@fontset@ubuntu
        \ahusetup{cjk-font = noto}
    \fi
  \fi
  \ahu@debug{Detected CJK font: \ahu@cjk@font}
\fi
\newcommand\ahu@set@cjk@font@windows{%
  \setCJKmainfont{SimSun}[
    AutoFakeBold = 3,
    ItalicFont   = KaiTi,
  ]%
  \setCJKsansfont{SimHei}[AutoFakeBold = 3]%
  \setCJKmonofont{FangSong}%
  \setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold = 3]%
  \setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold = 3]%
  \setCJKfamilyfont{zhkai}{KaiTi}%
  \setCJKfamilyfont{zhfs}{FangSong}%
}
\@namedef{ahu@set@cjk@font@windows-local}{%
  \IfFileExists{\ahu@windows@font@dir/Kaiti.ttf}{
    \setCJKmainfont{SimSun}[%
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttc,
      AutoFakeBold = 3,
      ItalicFont   = Kaiti,
      ItalicFeatures = {Extension = .ttf},
    ]%
    \setCJKmonofont{Fangsong}[
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhkai}{Kaiti}[
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhfs}{Fangsong}[
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttf,
    ]%
  }{
    \setCJKmainfont{SimSun}[%
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttc,
      AutoFakeBold = 3,
      ItalicFont   = Simkai,
      ItalicFeatures = {Extension = .ttf},
    ]%
    \setCJKmonofont{Simfang}[
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhkai}{Simkai}[
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhfs}{Simfang}[
      Path         = \ahu@windows@font@dir/,
      Extension    = .ttf,
    ]%
  }
  \setCJKsansfont{SimHei}[%
    Path         = \ahu@windows@font@dir/,
    Extension    = .ttf,
    AutoFakeBold = 3,
  ]%
  \setCJKfamilyfont{zhsong}{SimSun}[%
    Path         = \ahu@windows@font@dir/,
    Extension    = .ttc,
    AutoFakeBold = 3,
  ]%
  \setCJKfamilyfont{zhhei}{SimHei}[%
    Path         = \ahu@windows@font@dir/,
    Extension    = .ttf,
    AutoFakeBold = 3,
  ]%
}
\@namedef{ahu@set@cjk@font@mac-word}{%
  \let\ahu@windows@font@dir\ahu@mac@word@font@dir
  \@nameuse{ahu@set@cjk@font@windows-local}%
}
\newcommand\ahu@set@cjk@font@mac{%
  \defaultCJKfontfeatures{}%
  \setCJKmainfont{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = Kaiti SC Regular,
    BoldItalicFont = Kaiti SC Bold,
  ]%
  \setCJKsansfont{Heiti SC}[
    UprightFont    = * Light,
    BoldFont       = * Medium,
  ]%
  \setCJKmonofont{STFangsong}
  \setCJKfamilyfont{zhsong}{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Heiti SC}[
    UprightFont    = * Light,
    BoldFont       = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{STFangsong}%
  \setCJKfamilyfont{zhkai}{Kaiti SC}[
    UprightFont    = * Regular,
    BoldFont       = * Bold,
  ]%
  \setCJKfamilyfont{zhli}{Baoli SC}%
  \setCJKfamilyfont{zhyuan}{Yuanyi SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
  ]%
}
\newcommand\ahu@set@cjk@font@noto{%
  \defaultCJKfontfeatures{}%
  \setCJKmainfont{Noto Serif CJK SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
    Script         = CJK,
  ]%
  \setCJKsansfont{Noto Sans CJK SC}[
    BoldFont       = * Medium,
    Script         = CJK,
  ]%
  \setCJKmonofont{Noto Sans Mono CJK SC}[
    Script         = CJK,
  ]%
  \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}[
    UprightFont    = * Light,
    UprightFont    = * Bold,
    Script         = CJK,
  ]%
  \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}[
    BoldFont       = * Medium,
    Script         = CJK,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension      = .otf,
    UprightFont    = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension      = .otf,
    UprightFont    = *-Regular,
  ]%
}
\providecommand\songti{\CJKfamily{zhsong}}
\providecommand\heiti{\CJKfamily{zhhei}}
\providecommand\fangsong{\CJKfamily{zhfs}}
\providecommand\kaishu{\CJKfamily{zhkai}}
\newcommand\ahu@set@cjk@font{%
  \@nameuse{ahu@set@cjk@font@\ahu@cjk@font}%
}
\ahu@set@cjk@font
\ahu@option@hook{cjk-font}{\ahu@set@cjk@font}
\newcommand\ahu@qed{\rule{1ex}{1ex}}
\newcommand\ahu@load@unimath{%
  \@ifpackageloaded{unicode-math}{}{%
    \RequirePackage{unicode-math}%
    \DeclareRobustCommand\bm[1]{{\symbfit{##1}}}%
    \DeclareRobustCommand\boldsymbol[1]{{\symbfit{##1}}}%
    \newcommand\square{\mdlgwhtsquare}%
    \newcommand\blacksquare{\mdlgblksquare}%
    \AtBeginDocument{%
      \renewcommand\checkmark{\ensuremath{\symbol{"2713}}}%
    }%
    \renewcommand\ahu@qed{\ensuremath{\QED}}%
  }%
}
\newcommand\ahu@set@math@font@xits{%
  \ahu@set@xits@names
  \setmathfont{\ahu@font@name@xits@math}[
    Extension    = .otf,
  ]%
  \setmathfont{\ahu@font@name@xits@math}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\ahu@set@math@font@newcm{%
  \setmathfont{NewCMMath-Book}[
    Extension    = .otf,
  ]%
  \setmathfont{NewCMMath-Book}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {scr,bfscr},
  ]%
  \setmathrm{NewCM10}[
    Extension      = .otf,
    UprightFont    = *-Book,
    BoldFont       = *-Bold,
    ItalicFont     = *-BookItalic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \setmathsf{NewCMSans10}[
    Extension         = .otf,
    UprightFont       = *-Book,
    BoldFont          = *-Bold,
    ItalicFont        = *-BookOblique,
    BoldItalicFont    = *-BoldOblique,
  ]%
  \setmathtt{NewCMMono10}[
    Extension           = .otf,
    UprightFont         = *-Book,
    ItalicFont          = *-BookItalic,
    BoldFont            = *-Bold,
    BoldItalicFont      = *-BoldOblique,
  ]%
}
\newcommand\ahu@set@math@font{%
      \ahu@load@unimath
      \@nameuse{ahu@set@math@font@\ahu@math@font}%
}
\ahu@option@hook{math-font}{\g@addto@macro\ahu@setup@hook{\ahu@set@math@font}}
\newcommand\ahu@set@math@font@auto{%
  \ifahu@math@font@auto
    \ahusetup{math-font=xits}%
  \fi
}
\AtBeginOfPackageFile*{siunitx}{\ahu@set@math@font@auto}
\AtEndPreamble{\ahu@set@math@font@auto}
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand\footrulewidth{0pt}%
  \ifahu@degree@bachelor
    \renewcommand\headrulewidth{0pt}%
    \fancyfoot[C]{
      \ifahu@main@language@chinese
        \xiaowu
      \else
        \normalsize
      \fi
      \thepage
    }%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
  \else
    \renewcommand\headrulewidth{0.75bp}%
      \wuhao
      \ifahu@main@language@chinese
        \fancyhead[CO]{安徽大学学位论文}
        \fancyhead[CE]{\zihao{5}\leftmark}
      \else
        \fancyhead[CO]{Anhui University}
        \fancyhead[CE]{\MakeUppercase{\leftmark}}%
      \fi
    \fancyfoot[C]{\wuhao\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth{%
        \CTEXifname{%
          \CTEXthechapter
          \ifahu@main@language@chinese
            \quad
          \else
            \space
          \fi
        }{}##1%
      }{}%
    }%
  \fi
  \let\sectionmark\@gobble
}
\def\ps@chapter{}
\ctexset{chapter/pagestyle = chapter}
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifahu@output@print
      \ifodd\c@page
      \else
        \thispagestyle{empty}%
        \hbox{}%
        \newpage
        \if@twocolumn
          \hbox{}\newpage
        \fi
      \fi
    \fi
  \fi
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagestyle{empty}
}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{plain}
  \pagenumbering{arabic}
  \normalsize%
}
\newif\ifahu@backmatter
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \ahu@backmattertrue
  \ahusetup{toc-depth = 0}%
}
\ctexset{%
  punct=quanjiao,
}
\newcommand\ahu@set@indent{%
  \ifahu@main@language@chinese
    \ctexset{autoindent=2}%
  \else
    \ctexset{autoindent=0.8cm}%
  \fi
}
\ahu@set@indent
\ahu@option@hook{degree}{\ahu@set@indent}
\ahu@option@hook{main-language}{\ahu@set@indent}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\partopsep=\z@skip
\def\@listi{\leftmargin\leftmargini
            \parsep \z@skip
            \topsep \z@skip
            \itemsep\z@skip}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \itemsep   \z@skip}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \partopsep \z@skip
              \itemsep   \z@skip}
\setlist{nosep}
\interfootnotelinepenalty=10000
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\footnotemargin=13.5bp
\long\def\@makefntext#1{%
  \begingroup
    % 序号取消上标
    \def\@makefnmark{\hbox{\normalfont\@thefnmark}}%
    \xiaowu
    \ifFN@hangfoot
      \bgroup
      \setbox\@tempboxa\hbox{%
        \ifdim\footnotemargin>\z@
          \hb@xt@\footnotemargin{\@makefnmark\hss}%
        \else
          \@makefnmark
        \fi
      }%
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      % \footnotesize
      \xiaowu
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      \parskip\hangfootparskip\relax
      \parindent\hangfootparindent\relax
    \else
      \parindent1em%
      \noindent
      \ifdim\footnotemargin>\z@
        \hb@xt@ \footnotemargin{\hss\@makefnmark}%
      \else
        \ifdim\footnotemargin=\z@
          \llap{\@makefnmark}%
        \else
          \llap{\hb@xt@ -\footnotemargin{\@makefnmark\hss}}%
        \fi
      \fi
    \fi
    \footnotelayout#1%
    \ifFN@hangfoot
      \par\egroup
    \fi
  \endgroup
}
\allowdisplaybreaks[4]
\def\fps@figure{htbp}
\def\fps@table{htbp}
\setlength{\floatsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\textfloatsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\intextsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\patchcmd{\@addtocurcol}%
  {\vskip \intextsep}%
  {\edef\save@first@penalty{\the\lastpenalty}\unpenalty
   \ifnum \lastpenalty = \@M  % hopefully the OR penalty
     \unpenalty
   \else
     \penalty \save@first@penalty \relax % put it back
   \fi
   \ifnum\outputpenalty <-\@Mii
     \addvspace\intextsep
     \vskip\parskip
   \else
     \addvspace\intextsep
   \fi}%
  {}{\ahu@patch@error{\@addtocurcol}}
\patchcmd{\@addtocurcol}%
  {\vskip\intextsep \ifnum\outputpenalty <-\@Mii \vskip -\parskip\fi}%
  {\ifnum\outputpenalty <-\@Mii
     \aftergroup\vskip\aftergroup\intextsep
     \aftergroup\nointerlineskip
   \else
     \vskip\intextsep
   \fi}%
  {}{\ahu@patch@error{\@addtocurcol}}
\patchcmd{\@getpen}{\@M}{\@Mi}
  {}{\ahu@patch@error{\@getpen}}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ahu@define@key{
  figure-number-separator = {
    name    = figure@number@separator,
    default = {.},
  },
  table-number-separator = {
    name    = table@number@separator,
    default = {.},
  },
  equation-number-separator = {
    name    = equation@number@separator,
    default = {.},
  },
  number-separator = {
    name    = number@separator,
    default = {.},
  },
}
\renewcommand\thefigure{%
  \ifnum\c@chapter>\z@
    \thechapter
    \ahu@figure@number@separator
  \fi
  \@arabic\c@figure
}
\renewcommand\thetable{%
  \ifnum\c@chapter>\z@
    \thechapter
    \ahu@table@number@separator
  \fi
  \@arabic\c@table
}
\renewcommand\theequation{%
  \ifnum\c@chapter>\z@
    \thechapter
    \ahu@equation@number@separator
  \fi
  \@arabic\c@equation
}
\newcommand\ahu@set@number@separator{%
  \let\ahu@figure@number@separator\ahu@number@separator
  \let\ahu@table@number@separator\ahu@number@separator
  \let\ahu@equation@number@separator\ahu@number@separator
}
\ahu@option@hook{number-separator}{\ahu@set@number@separator}
\DeclareCaptionFont{ahu}{%
  \ifahu@degree@bachelor
    \fontsize{10.5bp}{15bp}\selectfont
  \else
    \ifahu@language@chinese
      \fontsize{10.5bp}{14.3bp}\selectfont\bfseries
    \else
      \fontsize{10.5bp}{12.65bp}\selectfont
    \fi
  \fi
}
\captionsetup{
  font           = ahu,
  labelsep       = quad,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=ahu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\heavyrulewidth=1.5bp
\lightrulewidth=1bp
\AtEndOfPackageFile*{threeparttable}{
  \g@addto@macro\TPT@defaults{\wuhao}
}
  \newcommand{\ahu@abstract@name}{摘\quad 要}
  \newcommand{\ahu@abstract@name@en}{Abstract}
\ctexset{%
  chapter = {
    nameformat   = {},
    numberformat = {},
    titleformat  = {},
    fixskip      = true,
    afterindent  = true,
    lofskip      = 0pt,
    lotskip      = 0pt,
  },
  section = {
    afterindent  = true,
  },
  subsection = {
    afterindent  = true,
  },
  subsubsection = {
    afterindent  = true,
  },
  paragraph/afterindent = true,
  subparagraph/afterindent = true,
}
\newcommand\ahu@set@section@format{%
  \ifahu@degree@bachelor
    \ctexset{%
      chapter = {
        format     = \centering\sffamily\fontsize{15bp}{20bp}\selectfont,
        aftername  = \quad,
        beforeskip = 30bp,
        afterskip  = 20bp,
      },
      section = {
        format     = \sffamily\fontsize{14bp}{18bp}\selectfont,
        aftername  = \quad,
        beforeskip = 25bp,
        afterskip  = 12bp,
      },
      subsection = {
        format     = \sffamily\fontsize{13bp}{15bp}\selectfont,
        aftername  = \quad,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        format     = \sffamily\fontsize{12bp}{14bp}\selectfont,
        aftername  = \quad,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
    \ifahu@main@language@chinese
      \ctexset{
        chapter = {
          name   = {第,章},
          number = \chinese{chapter},
        },
      }%
    \else
      \ctexset{
        chapter = {
          name   = \chaptername\space,
          number = \ahu@english@number{chapter},
        },
      }%
    \fi
  \else
    \ctexset{%
      chapter = {
        beforeskip = 27bp,
        afterskip  = 27bp,
      },
      section = {
        beforeskip = 24bp,
        afterskip  = 6bp,
      },
      subsection = {
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
    \ifahu@main@language@chinese
      \ctexset{%
        chapter = {
          format      = \centering\sffamily\sanhao,
          nameformat  = {},
          titleformat = {},
          name        = {第,章},
          number      = \chinese{chapter},
          aftername   = \quad,
        },
        section = {
          format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
          aftername  = \quad,
        },
        subsection = {
          format     = \sffamily\fontsize{13bp}{20bp}\selectfont,
          aftername  = \quad,
        },
        subsubsection = {
          format     = \sffamily\fontsize{12bp}{20bp}\selectfont,
          aftername  = \quad,
        },
      }%
    \else
      \ctexset{%
        chapter = {
          format      = \centering\sffamily\bfseries\fontsize{16bp}{20bp}\selectfont,
          nameformat  = \MakeUppercase,
          titleformat = \MakeUppercase,
          name        = \chaptername\space,
          aftername   = \space,
          number      = \thechapter,
        },
        section = {
          format     = \sffamily\bfseries\fontsize{14bp}{20bp}\selectfont,
          aftername  = \space,
        },
        subsection = {
          format     = \sffamily\bfseries\fontsize{13bp}{20bp}\selectfont,
          aftername  = \space,
        },
        subsubsection = {
          format     = \sffamily\bfseries\fontsize{12bp}{20bp}\selectfont,
          aftername  = \space,
        },
      }%
    \fi
  \fi
}
\ahu@set@section@format
\ahu@option@hook{degree}{\ahu@set@section@format}
\ahu@option@hook{main-language}{\ahu@set@section@format}
\newcommand\ahu@english@number[1]{%
  \expandafter\ifcase\csname c@#1\endcsname
    Zero\or
    One\or
    Two\or
    Three\or
    Four\or
    Five\or
    Six\or
    Seven\or
    Eight\or
    Nine\or
    Ten\or
    Eleven\or
    Twelve\or
    Thirteen\or
    Fourteen\or
    Fifteen\or
    Sixteen\or
    Seventeen\or
    Eighteen\or
    Nineteen\or
    Twenty\or
    \ahu@error{You are genius}%
  \fi
}
\newcommand\ahu@pdfbookmark[2]{}
\newcommand\ahu@phantomsection{}
\NewDocumentCommand\ahu@chapter{s o m o}{%
  \IfBooleanF{#1}{%
    \ahu@error{You have to use the star form: \string\ahu@chapter*}%
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \ahu@pdfbookmark{0}{#3}%
    }{%
      \ahu@phantomsection
      \addcontentsline{toc}{chapter}{#2}%
    }%
  }{%
    \ahu@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ifahu@degree@bachelor\ctexset{chapter/beforeskip=40bp}\fi
  \chapter*{#3}%
  \ifahu@degree@bachelor\ctexset{chapter/beforeskip=30bp}\fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \ahu@chapter*[]{\contentsname}%
  \@starttoc{toc}%
}
\ahu@define@key{
  toc-chapter-style = {
    name = toc@chapter@style,
    choices = {
      arial,
      times,
    },
    default = arial,
  },
}
\newcommand\ahu@leaders{\nobreak\titlerule*[4bp]{.}\nobreak}
\newcommand\ahu@set@toc@format{%
  \contentsmargin{\z@}%
  \ifahu@degree@bachelor
    \ifahu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\addvspace{6bp}
          \ifahu@toc@chapter@style@arial
            \sffamily
          \else
            \heiti
          \fi
        }
        {\contentspush{\hyperlink{chapter.\thecontentslabel}{\thecontentslabel\quad}}}{}
        {\rmfamily\ahu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\hyperlink{section.\thecontentslabel}{\thecontentslabel\quad}}}{}
        {\ahu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [1.5em]{}
        {\contentspush{\hyperlink{subsubsection.\thecontentslabel}{\thecontentslabel\quad}}}{}
        {\ahu@leaders\thecontentspage}%
    \else
      \ifahu@main@language@english
        \titlecontents{chapter}
          [\z@]{\addvspace{6bp}\sffamily}
          {\contentspush{\thecontentslabel\quad}}{}
          {\rmfamily\ahu@leaders\thecontentspage}%
        \titlecontents{section}
          [0.5cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\ahu@leaders\thecontentspage}%
        \titlecontents{subsection}
          [1cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\ahu@leaders\thecontentspage}%
      \fi
    \fi
  \else
    \ifahu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\sffamily}
        {\contentspush{\hyperlink{chapter.\thecontentslabel}{\thecontentslabel\quad}}}%
        {}
        {\rmfamily\ahu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\hyperlink{section.\thecontentslabel}{\thecontentslabel\quad}}}%
        {}
        {\ahu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [2em]{}
        {\contentspush{\hyperlink{subsubsection.\thecontentslabel}{\thecontentslabel\quad}}}%
        {}
        {\ahu@leaders\thecontentspage}%
    \else
      \titlecontents{chapter}
        [\z@]{\heiti}
        {\contentspush{\MakeUppercase{\thecontentslabel}\space}\MakeUppercase}{\MakeUppercase}
        {\rmfamily\ahu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\space}}{}
        {\ahu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [2em]{}
        {\contentspush{\thecontentslabel\space}}{}
        {\ahu@leaders\thecontentspage}%
    \fi
  \fi
}
\ahu@set@toc@format
\ahu@option@hook{degree}{\ahu@set@toc@format}
\ahu@option@hook{main-language}{\ahu@set@toc@format}
\ahu@define@key{
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  title = {
    default = {标题},
  },
  title* = {
    default = {Title},
    name    = title@en,
  },
  author = {
    default = {姓名},
  },
  author* = {
    default = {Name of author},
    name    = author@en,
  },
  student-id = {
    name = student@id,
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor* = {
    default = {Name of supervisor},
    name    = supervisor@en,
  },
  associate-supervisor = {
    name = associate@supervisor,
  },
  associate-supervisor* = {
    name = associate@supervisor@en,
  },
  co-supervisor = {
    name = co@supervisor,
  },
  co-supervisor* = {
    name = co@supervisor@en,
  },
  professional-rank = {
    default = {教授},
    name = professional@rank,
  },
  degree-category = {
    default = {理学博士},
    name    = degree@category,
  },
  degree-category* = {
    default = {Doctor of Philosophy},
    name    = degree@category@en,
  },
}

\ahu@define@key{
  department = {
    default = {数学科学学院},
  },
  discipline = {
    default = {数学},
  },
  discipline* = {
    default = {Mathematics},
    name    = discipline@en,
  },
  sub-discipline = {
    default = {基础数学},
    name    = subdiscipline,
  },
  sub-discipline* = {
    default = {Pure Mathematics},
    name    = subdiscipline@en,
  },
}
\ahu@option@hook{discipline}{%
  \ifahu@degree@type@professional
    \ahu@warning{`discipline' for professional degree is deprecated. Use `professional-field' instead.}
    \let\ahu@professional@field\ahu@discipline
    \let\ahu@discipline\@empty
  \fi
}
\ahu@option@hook{discipline*}{%
  \ifahu@degree@type@professional
    \ahu@warning{`discipline*' for professional degree is deprecated. Use `professional-field*' instead.}
    \let\ahu@professional@field@en\ahu@discipline@en
    \let\ahu@discipline@en\@empty
  \fi
}
\ahu@define@key{
  professional-field = {
    name    = professional@field,
  },
  professional-field* = {
    name    = professional@field@en,
  },
  engineering-field = {
    name    = engineering@field,
  },
  engineering-field* = {
    name    = engineering@field@en,
  },
  start-date = {
    name    = start@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  end-date = {
    name    = end@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  defense-date = {
    name    = defense@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  clc,
  udc,
  id,
  include-spine = {
    name = include@spine,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\newcommand\ahu@format@date[2]{%
  \edef\ahu@@date{#2}%
  \def\ahu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\ahu@@process@date\ahu@@date\@nil
}
\newcommand\ahu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\ahu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\ahu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\ahu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\ahu@date@en@short[3]{\ahu@date@month{#2}, #1}
\newcommand\ahu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\ahu@uline[2][6em]{\uline{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\ahu@fixed@box[2]{%
  \begingroup
    \ifLuaTeX
      \ltjsetparameter{kanjiskip = {0pt plus 2filll minus 1filll}}%
    \else
      \renewcommand\CJKglue{\hspace{0pt plus 2filll minus 1filll}}%
    \fi
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\ahu@stretch@box
\newcommand\ahu@stretch[2]{%
  \sbox\ahu@stretch@box{#2}%
  \ifdim \wd\ahu@stretch@box < #1\relax
    \begingroup
      \ifLuaTeX
        \ltjsetparameter{kanjiskip = {0pt plus 2filll}}%
      \else
        \renewcommand\CJKglue{\hspace{0pt plus 2filll}}%
      \fi
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\ahu@stretch@box
  \fi
}
\newbox\ahu@pad@box
\newcommand\ahu@pad[2]{%
  \sbox\ahu@pad@box{#2}%
  \ifdim \wd\ahu@pad@box < #1\relax
    \makebox[#1][l]{\box\ahu@pad@box}%
  \else
    \box\ahu@pad@box
  \fi
}
\newcounter{ahu@csl@count}
\newcommand\ahu@name@title@process[1]{%
  \ifcase\c@ahu@csl@count  % == 0
    \gdef\ahu@@name{#1}%
  \or  % == 1
    \gdef\ahu@@title{#1}%
  \fi
  \stepcounter{ahu@csl@count}%
}
\newcommand\ahu@name@title@format[2]{%
  \ahu@pad{3cm}{\ahu@stretch{4em}{#1}}%
  \ahu@stretch{3em}{#2}%
}
\newcommand\ahu@name@title[1]{%
  \setcounter{ahu@csl@count}{0}%
  \gdef\ahu@@name{}%
  \gdef\ahu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\ahu@name@title@process}%
  \ahu@name@title@format{\ahu@@name}{\ahu@@title}%
}
\newcommand{\makecover}{
  \cleardoublepage
  \pagestyle{empty}
  \ahu@pdfbookmark{-1}{\ahu@title}%
  \ifahu@degree@graduate
     \ahu@cover@page
     \ifahu@include@spine@true
       \spine
     \fi
  \fi
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagestyle{empty}
  \ahu@pdfbookmark{-1}{\ahu@title}%
  \ahu@titlepage
  \clearpage
}
\newcommand\ahu@titlepage{%
  \ahusetup{language = chinese}%
  \ifahu@degree@graduate
    \ahu@titlepage@graduate@first
    \cleardoublepage
    \ahu@titlepage@graduate@second
    \cleardoublepage
  \else
    \ifahu@degree@bachelor
      % 本科生
      \ahu@titlepage@bachelor
    \else
      \ifahu@degree@postdoc
        % 博后
        \ahu@cover@postdoc
        \cleardoublepage
        \ahu@titlepage@postdoc
      \fi
    \fi
  \fi
  \ahu@reset@main@language
}
\newlength{\temporarywidth}
\settowidth{\temporarywidth}{中图分类号:}
\def\ahu@cover@page{%
  \newgeometry{
    top    = 3.2cm,
    bottom = 4.4cm,
    left   = 2.5cm,
    right  = 2.5cm
  }%
 \thispagestyle{empty}
 \begingroup
   \noindent {\zihao{5}\bfseries\heiti%
   \makebox[\temporarywidth][s]{%
   中图分类号:} {\bfseries\ahu@clc} \\[2mm]
   \makebox[\temporarywidth][s]{%
   论文编号:} 10357\ahu@student@id}
 \endgroup
 \par
 \begin{center}
   \ifahu@nocolor
    \raisebox{-20ex}{
    \includegraphics[width=8.5cm]{ahublack.pdf}}
   \else
    \raisebox{-20ex}{
    \includegraphics[width=8.5cm]{ahulogo.pdf}}
   \fi
 \end{center}
 \vskip12mm
 \begin{center}
  \fontsize{48bp}{48bp}\selectfont\STXingka
    \ifahu@degree@doctor
      博士学位论文
    \else
      \ifahu@degree@master
        \ifahu@degree@type@professional
          专业硕士学位论文
        \else
          硕士学位论文
        \fi
      \fi
    \fi
 \end{center}
 \vskip32mm
 \begin{center}
  \fontsize{32bp}{48bp}\selectfont\bfseries\ahu@title
 \end{center}
 \vfill
    \ifahu@degree@type@professional
      \begin{center}\heiti\zihao{4}
       \begin{tabular}{cc}
\makebox[6em][l]{作者姓名} & \uline{\makebox[12em]{\ahu@author}} \\[6mm]
\makebox[6em][l]{专业学位类别} & \uline{\makebox[12em]{\ahu@discipline}} \\[6mm]
\makebox[6em][l]{专业学位领域} & \uline{\makebox[12em]{\ahu@professional@field}} \\[6mm]
\makebox[6em][l]{指导教师} & \uline{\makebox[12em]{\ahu@supervisor}}
       \end{tabular}
     \end{center}
    \else
    \begin{center}\heiti\zihao{4}
     \begin{tabular}{cc}
\makebox[4em][s]{作者姓名} & \uline{\makebox[12em]{\ahu@author}} \\[6mm]
\makebox[4em][s]{一级学科} & \uline{\makebox[12em]{\ahu@discipline}} \\[6mm]
\makebox[4em][s]{二级学科} & \uline{\makebox[12em]{\ahu@subdiscipline}} \\[6mm]
\makebox[4em][s]{指导教师} & \uline{\makebox[12em]{\ahu@supervisor}}
     \end{tabular}
   \end{center}
  \fi
  \clearpage
  \restoregeometry
}
\newcommand{\ahu@titlepage@graduate@first}{%
  \newgeometry{
    top    = 7cm,
    bottom = 4.5cm,
    left   = 2.5cm,
    right  = 2.5cm
  }%
 \thispagestyle{empty}
  \begin{center}
    \xiaoer[1.9]\bfseries\ahu@title@en
  \end{center}
  \vskip15mm
  \begin{center}
\zihao{4} A Dissertation Submitted for the Degree of \ahu@degree@category@en
  \end{center}
  \vskip45mm
  \begin{center}\zihao{-3}
    \begin{tabular}{cc}
\makebox[4em][s]{\bfseries Candidate:} & \uline{\makebox[12em]{\bfseries\ahu@author@en}} \\[10mm]
\makebox[4em][s]{\bfseries Supervisor:} & \uline{\makebox[12em]{\bfseries\ahu@supervisor@en}}
    \end{tabular}
 \end{center}
  \clearpage
  \restoregeometry
 }
\newcommand\ahu@titlepage@graduate@second{%
  \newgeometry{
    top     = 3.1cm,
    bottom  = 6.5cm,
    left   = 2.5cm,
    right  = 2.5cm
  }%
  \thispagestyle{empty}%
  \begingroup
   \noindent {\zihao{5}\bfseries\heiti%
   \makebox[\temporarywidth][s]{%
   中图分类号:} {\bfseries\ahu@clc} \\[2mm]
   \makebox[\temporarywidth][s]{%
   论文编号:} 10357\ahu@student@id}
  \endgroup
  \vskip 107pt
  \begingroup
    \centering
    \xiaoer\heiti
    \ifahu@degree@doctor
      博\quad 士\quad 学\quad 位\quad 论\quad 文
    \else
      \ifahu@degree@master
       硕\quad 士\quad 学\quad 位\quad 论\quad 文
      \fi
    \fi
    \par
    \vskip 70pt%
    \begingroup
      \sffamily\bfseries\xiaoyi\heiti
      \ahu@title\par
    \endgroup
    \ifahu@main@language@english
      \vskip 5.4pt%
      \begingroup
        \sffamily\bfseries\fontsize{20bp}{31.2bp}\selectfont
        \ahu@title@en\par
      \endgroup
    \fi
  \endgroup
  \vfill
  \begingroup
    \ifahu@degree@type@professional
      \noindent
\begin{tabular}{@{}p{0.2\textwidth} p{0.3\textwidth} @{}p{0.2\textwidth} p{0.3\textwidth}}
  作者姓名  & \ahu@author  & 申请学位级别  & 专业硕士 \\[3mm]
  指导教师姓名 & \ahu@supervisor & 职\qquad 称 & \ahu@professional@rank \\[3mm]
  专业名称 & \ahu@professional@field & 研究方向 & 图论及其应用 \\[3mm]
  学习时间自 & \ahu@start@date & \hspace{2em}起至 & \ahu@end@date 止 \\[3mm]
  论文提交日期 & \ahu@format@date{\ahu@date@zh@digit}{\ahu@date} & 论文答辩日期 & \ahu@format@date{\ahu@date@zh@digit}{\ahu@defense@date}
\end{tabular}
   \else
\noindent
\begin{tabular}{@{}p{0.2\textwidth} p{0.3\textwidth} @{}p{0.2\textwidth} p{0.3\textwidth}}
  作者姓名 & \ahu@author & 申请学位级别 & \ahu@degree@category \\[3mm]
  指导教师姓名 & \ahu@supervisor & 职\qquad 称 & \ahu@professional@rank \\[3mm]
  学科专业 & \ahu@discipline & 研究方向 & 图论及其应用 \\[3mm]
  学习时间自 & \ahu@format@date{\ahu@date@zh@digit}{\ahu@start@date} & \hspace{2em}起至 & \ahu@format@date{\ahu@date@zh@digit}{\ahu@end@date} \\[3mm]
  论文提交日期 & \ahu@format@date{\ahu@date@zh@digit}{\ahu@date} & 论文答辩日期 & \ahu@format@date{\ahu@date@zh@digit}{\ahu@defense@date}
\end{tabular}
   \fi
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\ahu@set@student@id{%
    \ifx\ahu@student@id\@empty\else
\ahu@warning{`student-id' in "\protect\ahusetup" would be ignored when `thesis-type' is not proposal.}%
    \fi
}
\ahu@set@student@id
\ahu@option@hook{student-id}{\ahu@set@student@id}
\newcommand\ahu@titlepage@secret{%
  \sffamily\sanhao
  \ifx\ahu@secret@level\@empty
    \phantom{秘密}%
  \else
\ahu@secret@level\symbol{"2605}\makebox[3em][c]{\ahu@secret@year}年%
  \fi\par
}
\newcommand\ahu@titlepage@bachelor{%
  \newgeometry{
    top    = 4cm,
    bottom = 6cm,
    left   = 2.5cm,
    right  = 2.5cm
  }%
  \thispagestyle{empty}%
  \begingroup
    \centering
      \bfseries\xiaochu[1.5] 安徽大学 \\ 本科毕业论文 (设计、创作) \par%
  \endgroup
  \vfill
  \begin{center}
    \begin{tabular}{l}\xiaosan[2]
      \makebox{题\qquad 目:~}%
      \parbox[t]{\textwidth}{%
      \renewcommand\ULthickness{0.05em}%
      \renewcommand\ULdepth{0.2em}%
      \expandafter\uline\expandafter{\ahu@title}\par
      \ifahu@main@language@english
         \ahusetup{language=english}%
         \expandafter\uline\expandafter{\ahu@title@en}\par
         \ahusetup{language=chinese}%
      \fi
      } \\[9mm]
\xiaosan 学生姓名: \ahu@uline[5cm]{\ahu@author} 学号: \ahu@uline[5cm]{\ahu@student@id} \\[6mm]
\xiaosan 院\hspace{6mm} (系): \ahu@uline[5cm]{\ahu@department} 专业: \ahu@uline[5cm]{\ahu@discipline} \\[6mm]
\xiaosan 入学时间: \ahu@uline[5.6cm]{} 年 \ahu@uline[5cm]{} \\[6mm]
\xiaosan 导师姓名: \ahu@uline[4cm]{\ahu@supervisor} 职称/学位: \ahu@uline[4.5cm]{\ahu@supervisor} \\[6mm]
\xiaosan 导师所在单位: \ahu@uline[10.2cm]{\ahu@department} \\[6mm]
\xiaosan 完成时间: \ahu@uline[5cm]{} 年 \ahu@uline[5cm]{} 月
    \end{tabular}
  \end{center}
  \clearpage
  \restoregeometry
}
\newcommand\ahu@cover@postdoc{%
  \thispagestyle{empty}%
  \begin{center}%
    \renewcommand\ULthickness{0.7pt}%
    \vspace*{0.35cm}%
    {\sihao[2.5]%
      \ahu@stretch{3.1em}{分类号}\ahu@underline[3.7cm]{\ahu@clc}\hfill
      密级\ahu@underline[3.7cm]{\ahu@secret@level}\par
      \ahu@stretch{3.1em}{U D C}\ahu@underline[3.7cm]{\ahu@udc}\hfill
      编号\ahu@underline[3.7cm]{\ahu@id}\par
    }%
    \vskip 3.15cm%
    {\sffamily\bfseries\xiaoer[2.6]%
      {\ziju{1.5} 安徽大学 \par}%
      {\ziju{0.5} 博士后研究工作报告 \par}%
    }%
    \vskip 0.2cm%
    \parbox[t][4.0cm][c]{\textwidth}{%
      \centering\sihao[2.5]%
      \renewcommand\ULdepth{.5em}%
      \expandafter\uline\expandafter{\ahu@title}\par
    }\par
    \vskip 0.4cm%
    {\xiaosi\ahu@author\par}%
    \vskip 1.4cm%
    {\xiaosi[1.58]%
      \renewcommand\ULdepth{0.5em}%
      工作完成日期\quad
      \ahu@uline[5.9cm]{%
        \ahu@format@date{\ahu@date@zh@digit@short}{\ahu@start@date}—%
        \ahu@format@date{\ahu@date@zh@digit@short}{\ahu@end@date}
      }\par
      \vskip 0.55cm%
      报告提交日期\quad
      \ahu@uline[5.9cm]{\ahu@format@date{\ahu@date@zh@digit@short}{\ahu@date}}\par
    }%
    \vskip 1cm%
    {\xiaosi[2]{\ziju{1}安徽大学}\par}%
    \vskip 0.25cm%
    {\xiaosi[2]\ahu@format@date{\ahu@date@zh@digit@short}{\ahu@date}\par}%
  \end{center}%
}
\newcommand\ahu@titlepage@postdoc{%
  \thispagestyle{empty}%
  \begin{center}%
    \vspace*{1.5cm}%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sanhao[1.95]\ahu@title\par
    }\par
    \vskip 0.15cm%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sihao[1.36]\ahu@title@en\par
    }\par
    \vskip 0.4cm%
    {\xiaosi[2.6]%
      \begin{tabular}{l@{\quad}l}%
        \renewcommand\arraystretch{1}%
    \ahu@stretch{11em}{博士后姓名:}                & \ahu@author       \\
    \ahu@stretch{11em}{流动站(一级学科)名称:}      & \ahu@discipline    \\
    \ahu@stretch{11em}{专\quad{}业(二级学科)名称:} & \ahu@subdiscipline \\
      \end{tabular}\par
    }%
    \vskip 2.7cm%
    {\xiaosi[2.6]%
      研究工作起始时间:\quad\ahu@format@date{\ahu@date@zh@digit}{\ahu@start@date}\par
      \vskip 0.1cm%
      研究工作期满时间:\quad\ahu@format@date{\ahu@date@zh@digit}{\ahu@end@date}\par
    }%
    \vskip 2.1cm%
    {\xiaosi[2.6]安徽大学人事处\par}%
    \vskip 0.6cm%
    {\ahu@format@date{\ahu@date@zh@digit@short}{\ahu@date}\par}%
  \end{center}%
}
\newcommand\copyrightpage[1][]{%
  \thispagestyle{empty}
  \ifahu@degree@postdoc\relax\else
    \def\ahu@@tmp{#1}
    \ifx\ahu@@tmp\@empty
      \ahusetup{language=chinese}%
        \ahu@copyright@page@graduate
      \ahu@reset@main@language
    \else
      \ahu@pdfbookmark{0}{独创性声明和使用授权书}%
      \ahu@phantomsection
      \kv@define@key{ahu@copyright}{file}{\includepdf{\kv@value}}%
      \kv@set@family@handler{ahu@copyright}{%
        \ifx\kv@value\relax
          \includepdf{\kv@key}%
        \else
          \kv@handled@false
        \fi
      }%
      \kvsetkeys{ahu@copyright}{#1}%
    \fi
  \fi
}
\newcommand\ahu@copyright@page@graduate{%
  \newgeometry{
    top    = 3.5cm,
    bottom = 5.7cm,
    left   = 2.5cm,
    right  = 2.5cm
  }%
  \thispagestyle{empty}
  \begingroup
    \ctexset{
       chapter = {
         format = {\centering\fangsong\xiaoyi},
        },
    }%
    \ahu@chapter*[]{独创性声明}%
  \endgroup
  \vskip 7mm%
  \begingroup
    \fontsize{12bp}{28bp}\selectfont\fangsong
  本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。
  据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表
  或撰写过的研究成果，也不包含为获得安徽大学或其他教育机构的学位或证书而使用过
  的材料。如有学术不端行为，一切后果由本人承担，与导师和安徽大学无关。\par\vskip3mm
\noindent 学位论文作者签名: \hfill 签字日期: \hspace{15mm} 年 \hspace{10mm} 月 \hspace{10mm} 日
  \endgroup
  \vfill
  \begingroup
    \fangsong\xiaoyi\centerline{学位论文版权使用授权书}
  \endgroup
  \vskip 12mm
  \begingroup
    \fontsize{12bp}{28bp}\selectfont\fangsong
  本学位论文作者完全了解安徽大学有关保留、使用学位论文的规定，有权保留并向
  国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权安徽
  大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印
  或扫描等复制手段保存、汇编学位论文。\par
  （保密的学位论文在解密后适用本授权书）\par
\noindent\makebox[.5\textwidth][l]{学位论文作者签名:} \makebox[.5\textwidth][l]{导师签名:} \par\vskip 3mm
\noindent\makebox[.5\textwidth][l]{签字日期: \hspace{15mm} 年 \hspace{7mm} 月 \hspace{7mm} 日}%
\makebox[.5\textwidth][l]{签字日期: \hspace{15mm} 年 \hspace{7mm} 月 \hspace{7mm} 日}
  \endgroup
}
\ahu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\ahu@clist@use[2]{%
  \def\ahu@@tmp{}%
  \def\ahu@clist@processor##1{%
    \ifx\ahu@@tmp\@empty
      \def\ahu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \expandafter\comma@parse\expandafter{#1}{\ahu@clist@processor}%
}
\newenvironment{abstract}{%
  \ahusetup{language = chinese}%
  \ifahu@degree@graduate
    \begingroup
      \ifahu@main@language@english
        \ctexset{%
          chapter/format = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
        }%
      \fi
      \ahu@chapter*[]{\ahu@abstract@name}%
    \endgroup
  \else
    \ahu@chapter*[]{\ahu@abstract@name}%
  \fi
}{%
  \par
  \null\par
  \ifahu@degree@graduate
    \noindent
    \textsf{关键词: }%
  \else
    \textbf{关键词: }%
  \fi
  \ahu@clist@use{\ahu@keywords}{; }%
  \gdef\ahu@keywords{}%
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
  \ahu@reset@main@language
}
\newenvironment{abstract*}{%
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
  \ahusetup{language = english}%
  \ahu@chapter*[]{\ahu@abstract@name@en}%
}{%
  \par
  \null\par
  \ifahu@degree@graduate
    \noindent
  \fi
  \textbf{Keywords:}\space
  \ahu@clist@use{\ahu@keywords@en}{; }%
  \ifahu@degree@graduate
    \vspace*{\stretch{1}}%
  \fi
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
  \ahu@reset@main@language % switch back to main language
}
\newenvironment{denotation}[1][2.5cm]{%
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
  \ahu@chapter*[]{\ahu@denotation@name}%
  \vskip-30bp\xiaosi[1.6]\begin{ahu@denotation}[labelwidth=#1]
}{%
  \end{ahu@denotation}
}
\newlist{ahu@denotation}{description}{1}
\setlist[ahu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=0.2\textwidth,
  rightmargin=0.2\textwidth,
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newcommand{\ahu@statement@text}{本人郑重声明: 所呈交的学位论文, 是本人在导师指导下,%
独立进行研究工作所取得的成果. 尽我所知, 除文中已经注明引用的内容外, 本学位论%
文的研究成果不包含任何他人享有著作权的内容. 对本论文所涉及的研究工作做出贡献的%
其他个人和集体, 均已在文中以明确方式标明. }
\newcommand{\ahu@signature}{签\hspace{1em}名: }
\newcommand{\ahu@backdate}{日\hspace{1em}期: }
\newenvironment{acknowledgements}{%
  \@mainmatterfalse
  \ahu@end@appendix@ref@section
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
  \ahu@chapter*{\ahu@acknowledgements@name}%
}{%
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
}
\ahu@define@key{
  statement-page-style = {
    name = statement@page@style,
    choices = {
      auto,
      empty,
      plain,
    },
    default = auto,
  },
  statement-page-number = {
    name = statement@page@number,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\ahu@option@hook{statement-page-number}{%
  \ifahu@statement@page@number@false
    \ahusetup{statement-page-style=empty}%
  \else
    \ahusetup{statement-page-style=plain}%
  \fi
  \ahu@warning{%
    The "statement-page-number" option is deprecated.
    Use "page-style" option of \protect\statement command instead%
  }%
}
\newif\ifahu@statement@exists
\newcommand\statement[1][]{%
  \@mainmatterfalse
  \ahu@end@appendix@ref@section
  \ahu@statement@existstrue
  \ifahu@degree@bachelor
    \cleardoublepage
    \def\ahu@statement@name{声\hspace{2em}明}%
  \else
    \def\ahu@statement@name{声\hspace{1em}明}%
  \fi
  \let\ahu@statement@file\@empty
  \kv@define@key{ahu@statement}{page-style}{\ahusetup{statement-page-style=##1}}%
  \kv@define@key{ahu@statement}{file}{\let\ahu@statement@file\kv@value}%
  \kv@set@family@handler{ahu@statement}{%
    \ifx\kv@value\relax
      \let\ahu@statement@file\kv@key
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{ahu@statement}{#1}%
  \ifahu@statement@page@style@auto
    \ifx\ahu@statement@file\@empty
      \ifahu@degree@bachelor
        \ahusetup{statement-page-style = empty}%
      \else
        \ahusetup{statement-page-style = plain}%
      \fi
    \else
      \ifahu@degree@bachelor
        \ahusetup{statement-page-style = plain}%
      \else
        \ahusetup{statement-page-style = empty}%
      \fi
    \fi
  \fi
  \ifx\ahu@statement@file\@empty
    \ahusetup{language=chinese}%
    \begingroup
      \ifahu@degree@graduate
        \ifahu@main@language@english
          \ctexset{%
            chapter/format = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
          }%
        \fi
      \fi
      \ahu@chapter*{\ahu@statement@name}%
    \endgroup
    \thispagestyle{\ahu@statement@page@style}%
    \ahu@statement@text\par
    \ifahu@degree@graduate
      \vskip 2cm%
    \else
      \null\par
    \fi
    {\hfill\ahu@signature\ahu@underline[2.5cm]\relax
      \ahu@backdate\ahu@underline[2.5cm]\relax}%
    \ahu@reset@main@language
  \else
    \includepdf[pagecommand={%
      \markboth{\ahu@statement@name}{}%
      \ahu@phantomsection
      \addcontentsline{toc}{chapter}{\ahu@statement@name}%
      \thispagestyle{\ahu@statement@page@style}%
    }]{\ahu@statement@file}%
  \fi
  \ifahu@degree@bachelor
    \cleardoublepage
  \fi
}
\def\ahu@listof#1{% #1: float type
  \setcounter{tocdepth}{2} % restore tocdepth in case being modified
  \@ifstar
    {\ahu@chapter*[]{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}
    {\ahu@chapter*[]{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}%
}
\renewcommand\listoffigures{%
  \ifahu@degree@bachelor
    \ifahu@backmatter\else
      \ahu@warning{The list of figures should be placed in back matter}%
    \fi
  \fi
  \ahu@listof{figure}%
}
\titlecontents{figure}
  [\z@]{}
  {\contentspush{\figurename~\thecontentslabel\quad}}{}
  {\nobreak\ahu@leaders\nobreak\hfil\thecontentspage}
\renewcommand\listoftables{%
  \ifahu@degree@bachelor
    \ifahu@backmatter\else
      \ahu@warning{The list of tables should be placed in back matter}%
    \fi
  \fi
  \ahu@listof{table}%
}
\titlecontents{table}
  [\z@]{}
  {\contentspush{\tablename~\thecontentslabel\quad}}{}
  {\ahu@leaders\thecontentspage}
\newcommand\listoffiguresandtables{%
  \ifahu@degree@bachelor
    \ahu@warning{The list of figures and tables are for graduates only}%
    \listoffigures
    \listoftables
  \else
    \ahu@chapter*[]{\ahu@list@figure@table@name}%
    \@starttoc{lof}%
    \par
    \null\par
    \@starttoc{lot}%
  \fi
}
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\ahu@listof{equation}}
\titlecontents{equation}
  [0pt]{\addvspace{6bp}}
  {\ahu@equation@name~\thecontentslabel}{}
  {\nobreak\ahu@leaders\nobreak\thecontentspage}
\contentsuse{equation}{loe}
\ahu@define@key{
  cite-style = {
    name = cite@style,
    choices = {
      super,
      inline,
      author-year,
    }
  }
}
\def\bibliographystyle#1{%
  \gdef\bu@bibstyle{#1}%
  \ifx\@begindocumenthook\@undefined\else
    \expandafter\AtBeginDocument
  \fi
    {\if@filesw
       \immediate\write\@auxout{\string\bibstyle{#1}}%
       \immediate\write\@auxout{\string\gdef\string\bu@bibstyle{#1}}%
     \fi}%
}
\def\bibliography#1{%
  \if@filesw
    \immediate\write\@auxout{\string\bibdata{\zap@space#1 \@empty}}%
    \immediate\write\@auxout{\string\gdef\string\bu@bibdata{#1}}%
  \fi
  \gdef\bu@bibdata{#1}%
  \@input@{\jobname.bbl}}
\PassOptionsToPackage{compress}{natbib}
\AtEndOfPackageFile*{natbib}{
  \DeclareRobustCommand\inlinecite{\@inlinecite}
  \def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
  \let\onlinecite\inlinecite
  \newcommand\bibstyle@super{%
    \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
  \newcommand\bibstyle@inline{%
    \bibpunct{[}{]}{,}{n}{,}{,}}
  \@namedef{bibstyle@author-year}{%
    \bibpunct{(}{)}{;}{a}{,}{,}}
  \ahu@option@hook{cite-style}{\@nameuse{bibstyle@\ahu@cite@style}}
  \@namedef{bibstyle@ahuthesis-numeric}{\citestyle{super}}
  \@namedef{bibstyle@ahuthesis-author-year}{\citestyle{author-year}}
  \@namedef{bibstyle@cell}{\citestyle{author-year}}
  \@namedef{bibstyle@ahuthesis-bachelor}{\citestyle{super}}
  \renewcommand\NAT@citesuper[3]{%
    \ifNAT@swa
      \if*#2*\else
        #2\NAT@spacechar
      \fi
      % \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close}%
      %  \if*#3*\else\NAT@spacechar#3\fi\else #1\fi\endgroup}
      \unskip\kern\p@
      \textsuperscript{%
        \NAT@@open#1\NAT@@close
        \if*#3*\else#3\fi
      }%
      \kern\p@
    \else
      #1%
    \fi
    \endgroup
  }
  \renewcommand\NAT@citenum[3]{%
    \ifNAT@swa
      \NAT@@open
      \if*#2*\else
        #2\NAT@spacechar
      \fi
      % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close
      #1\NAT@@close
      \if*#3*\else
        \textsuperscript{#3}%
      \fi
    \else
      #1%
    \fi
    \endgroup
  }
  \def\NAT@citexnum[#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\def\NAT@num{-1}\let\NAT@last@yr\relax\let\NAT@nm\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{%
        {\reset@font\bfseries?}
          \NAT@citeundefined\PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}}%
      {\let\NAT@last@num\NAT@num\let\NAT@last@nm\NAT@nm
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
        \ifNAT@full\let\NAT@nm\NAT@all@names\else
          \let\NAT@nm\NAT@name\fi
        \ifNAT@swa
        \@ifnum{\NAT@ctype>\@ne}{%
          \@citea
          \NAT@hyper@{\@ifnum{\NAT@ctype=\tw@}{\NAT@test{\NAT@ctype}}{\NAT@alias}}%
        }{%
          \@ifnum{\NAT@cmprs>\z@}{%
          \NAT@ifcat@num\NAT@num
            {\let\NAT@nm=\NAT@num}%
            {\def\NAT@nm{-2}}%
          \NAT@ifcat@num\NAT@last@num
            {\@tempcnta=\NAT@last@num\relax}%
            {\@tempcnta\m@ne}%
          \@ifnum{\NAT@nm=\@tempcnta}{%
            \@ifnum{\NAT@merge>\@ne}{}{\NAT@last@yr@mbox}%
          }{%
            \advance\@tempcnta by\@ne
            \@ifnum{\NAT@nm=\@tempcnta}{%
              % \ifx\NAT@last@yr\relax
              %   \def@NAT@last@yr{\@citea}%
              % \else
              %   \def@NAT@last@yr{--\NAT@penalty}%
              % \fi
              \def@NAT@last@yr{-\NAT@penalty}%
            }{%
              \NAT@last@yr@mbox
            }%
          }%
          }{%
          \@tempswatrue
          \@ifnum{\NAT@merge>\@ne}{\@ifnum{\NAT@last@num=\NAT@num\relax}{\@tempswafalse}{}}{}%
          \if@tempswa\NAT@citea@mbox\fi
          }%
        }%
        \NAT@def@citea
        \else
          \ifcase\NAT@ctype
            \ifx\NAT@last@nm\NAT@nm \NAT@yrsep\NAT@penalty\NAT@space\else
              \@citea \NAT@test{\@ne}\NAT@spacechar\NAT@mbox{\NAT@super@kern\NAT@@open}%
            \fi
            \if*#1*\else#1\NAT@spacechar\fi
            \NAT@mbox{\NAT@hyper@{{\citenumfont{\NAT@num}}}}%
            \NAT@def@citea@box
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space\NAT@alias
          \fi
        \fi
      }%
      }%
        \@ifnum{\NAT@cmprs>\z@}{\NAT@last@yr}{}%
        \ifNAT@swa\else
          % \@ifnum{\NAT@ctype=\z@}{%
          %   \if*#2*\else\NAT@cmt#2\fi
          % }{}%
          \NAT@mbox{\NAT@@close}%
          \@ifnum{\NAT@ctype=\z@}{%
            \if*#2*\else
              \textsuperscript{#2}%
            \fi
          }{}%
          \NAT@super@kern
        \fi
    }{#1}{#2}%
  }%
  \renewcommand\NAT@cite%
      [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
          % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
          #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
  \def\NAT@citex%
    [#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\let\NAT@nm\@empty\let\NAT@year\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{\@citea%
        {\reset@font\bfseries ?}\NAT@citeundefined
                  \PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}\def\NAT@date{}}%
      {\let\NAT@last@nm=\NAT@nm\let\NAT@last@yr=\NAT@year
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
      \ifNAT@full\let\NAT@nm\NAT@all@names\else
        \let\NAT@nm\NAT@name\fi
      \ifNAT@swa\ifcase\NAT@ctype
        \if\relax\NAT@date\relax
          \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}\NAT@date}%
        \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else\unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{%
                \NAT@aysep\NAT@spacechar}{\@citeb\@extra@b@citeb
              }%
              \NAT@date
            }%
          \fi
        \fi
      \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
      \or\@citea\NAT@hyper@{\NAT@date}%
      \or\@citea\NAT@hyper@{\NAT@alias}%
      \fi \NAT@def@citea
      \else
        \ifcase\NAT@ctype
          \if\relax\NAT@date\relax
            \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
          \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else
                \unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{\NAT@spacechar\NAT@@open\if*#1*\else#1\NAT@spacechar\fi}%
                {\@citeb\@extra@b@citeb}%
              \NAT@date
            }%
          \fi
          \fi
        \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
        \or\@citea\NAT@hyper@{\NAT@date}%
        \or\@citea\NAT@hyper@{\NAT@alias}%
        \fi
        \if\relax\NAT@date\relax
          \NAT@def@citea
        \else
          \NAT@def@citea@close
        \fi
      \fi
      }}\ifNAT@swa\else
        % \if*#2*\else\NAT@cmt#2\fi
        \if\relax\NAT@date\relax\else\NAT@@close\fi
        \if*#2*\else\textsuperscript{#2}\fi
      \fi}{#1}{#2}}
  \renewcommand\bibsection{\ahu@chapter*{\bibname}}
  \newcommand\ahu@set@bibliography@format{%
    \ifahu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifahu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \ahu@set@bibliography@format
  \ahu@option@hook{degree}{\ahu@set@bibliography@format}
  \ahu@option@hook{main-language}{\ahu@set@bibliography@format}
  \patchcmd\thebibliography{%
    \clubpenalty4000%
  }{%
    \interlinepenalty=5000\relax
    \clubpenalty=10000\relax
  }{}{\ahu@patch@error{\thebibliography}}
  \patchcmd\thebibliography{%
    \widowpenalty4000%
  }{%
    \widowpenalty=10000\relax
  }{}{\ahu@patch@error{\thebibliography}}
  \def\@biblabel#1{[#1]\hfill}
  \renewcommand\NAT@bibsetnum[1]{%
    \setlength{\leftmargin}{1cm}%
    \setlength{\itemindent}{\z@}%
    \setlength{\labelsep}{0.1cm}%
    \setlength{\labelwidth}{0.9cm}%
    \setlength{\itemsep}{\bibsep}
    \setlength{\parsep}{\z@}%
    \ifNAT@openbib
      \addtolength{\leftmargin}{\bibindent}%
      \setlength{\itemindent}{-\bibindent}%
      \setlength{\listparindent}{\itemindent}%
      \setlength{\parsep}{0pt}%
    \fi
  }
}
\g@addto@macro\appendix{%
  \@mainmattertrue
  \ifahu@degree@bachelor
    \ifahu@statement@exists\else
      \ahu@warning{The appendices should be placed after statement}%
    \fi
  \fi
}
\ahu@define@key{
  toc-depth = {
    name = toc@depth,
  },
}
\ahu@option@hook{toc-depth}{%
  \ifx\@begindocumenthook\@undefined
    \protected@write\@auxout{}{%
      \string\ttl@writefile{toc}{%
        \protect\setcounter{tocdepth}{\ahu@toc@depth}%
      }%
    }%
  \else
    \setcounter{tocdepth}{\ahu@toc@depth}%
  \fi
}
\g@addto@macro\appendix{%
  \ahusetup{
    toc-depth = 0,
  }%
}
\ahu@define@key{
  appendix-figure-in-lof = {
    name = appendix@figure@in@lof,
    choices = {
      true,
      false,
    },
    default = false,
  },
}
\ahu@option@hook{appendix-figure-in-lof}{%
  \ifahu@appendix@figure@in@lof@true
    \addtocontents{lof}{\string\let\string\contentsline\string\ttl@contentsline}%
    \addtocontents{lot}{\string\let\string\contentsline\string\ttl@contentsline}%
    \addtocontents{loe}{\string\let\string\contentsline\string\ttl@contentsline}%
  \else
    \addtocontents{lof}{\string\let\string\contentsline\string\ttl@gobblecontents}%
    \addtocontents{lot}{\string\let\string\contentsline\string\ttl@gobblecontents}%
    \addtocontents{loe}{\string\let\string\contentsline\string\ttl@gobblecontents}%
  \fi
}
\g@addto@macro\appendix{%
  \ahusetup{
    appendix-figure-in-lof = false,
  }%
}
\newcommand\ahu@end@appendix@ref@section{}
\AtBeginOfPackageFile*{bibunits}{
  \def\bibliography#1{%
    \if@filesw
      \immediate\write\@auxout{\string\bibdata{\zap@space#1 \@empty}}%
      \immediate\write\@auxout{\string\gdef\string\bu@bibdata{#1}}%
    \fi
    \@input@{\jobname.bbl}%
    \gdef\bu@bibdata{#1}%
  }
  \def\bibliographystyle#1{%
    \ifx\@begindocumenthook\@undefined\else
      \expandafter\AtBeginDocument
    \fi
      {\if@filesw
        \immediate\write\@auxout{\string\bibstyle{#1}}%
        \immediate\write\@auxout{\string\gdef\string\bu@bibstyle{#1}}%
      \fi}%
      \gdef\bu@bibstyle{#1}%
  }
}
\AtEndOfPackageFile*{bibunits}{
  \def\@startbibunit{%
    \global\let\@startbibunitorrelax\relax
    \global\let\@finishbibunit\@finishstartedbibunit
    \global\advance\@bibunitauxcnt 1
    \if@filesw
      {\endlinechar-1
      \makeatletter
      \@input{\@bibunitname.aux}}%
      \immediate\openout\@bibunitaux\@bibunitname.aux
      \immediate\write\@bibunitaux{\string\bibstyle{\@localbibstyle}}%
    \fi
  }
  \def\bu@bibliography#1{%
    \putbib[#1]%
  }
  \def\bu@bibliographystyle#1{%
    \if@filesw
      \immediate\write\@bibunitaux{\string\gdef\string\@localbibstyle{#1}}%
    \fi
    \gdef\@localbibstyle{#1}%
  }
  \providecommand\printbibliography{\putbib\relax}%
  \g@addto@macro\appendix{%
    \renewcommand\@bibunitname{\jobname-appendix-\@alph\c@chapter}%
    \bibliographyunit[\chapter]%
    \renewcommand\bibsection{%
      \ctexset{section/numbering = false}%
      \section{\bibname}%
      \ctexset{section/numbering = true}%
    }%
    \ifahu@degree@graduate
      \renewcommand\citenumfont{\@Alph\c@chapter.}%
      \renewcommand\@extra@binfo{@-\@alph\c@chapter}%
      \renewcommand\@extra@b@citeb{@-\@alph\c@chapter}%
      \renewcommand\bibnumfmt[1]{[\@Alph\c@chapter.#1]\hfill}%
    \fi
  }
  \renewcommand\ahu@end@appendix@ref@section{%
    \bibliographyunit\relax
  }
  \AtEndDocument{\ahu@end@appendix@ref@section}
  % \let\@xtestdef\@gobbletwo  % This doesn't work
  \def\bibunits@rerun@warning{\relax}
}
\PassOptionsToPackage{defernumbers = true}{biblatex}
\AtEndOfPackageFile*{biblatex}{
  \DeclareRefcontext{appendix}{}
  \g@addto@macro\appendix{%
    \pretocmd\chapter{%
      \newrefsection
      \ifahu@degree@bachelor\else
        \@tempcnta=\c@chapter
        \advance\@tempcnta\@ne
        \newrefcontext[labelprefix = {\@Alph\@tempcnta.}]{appendix}%
      \fi
    }{}{\ahu@patch@error{\chapter}}%
    \defbibheading{bibliography}[\bibname]{%
      \ctexset{section/numbering = false}%
      \section{#1}%
      \ctexset{section/numbering = true}%
    }%
  }
  \def\bibliographystyle#1{%
    \ahu@warning{'bibliographystyle' invalid for 'biblatex'.}%
  }
}
\newenvironment{resume}{%
  \@mainmatterfalse
  \ahu@end@appendix@ref@section
  \ahu@chapter*{\ahu@resume@name}%
  \ctexset{
    section = {
      format    += \centering,
      numbering = false,
    },
  }%
  \ifahu@language@chinese
    \ctexset{
      subsection = {
        format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
        numbering  = false,
        aftertitle = : ,
      },
    }%
    \setlist[achievements]{
      topsep     = 6bp,
      itemsep    = 6bp,
      leftmargin = 1cm,
      labelwidth = 1cm,
      labelsep   = 0pt,
      first      = {
        \ifahu@degree@graduate
          \fontsize{12bp}{16bp}\selectfont
        \fi
      },
      align      = left,
      label      = [\arabic*],
      resume     = achievements,
    }%
  \else
    \ctexset{
      subsection = {
        beforeskip = 0pt,
        afterskip  = 0pt,
        format     = \bfseries\normalsize,
        indent     = \parindent,
        numbering  = false,
      },
    }%
    \ifahu@degree@bachelor
      % 内容部分用 Arial 字体, 字号 15pt, 行距采用固定值 20pt, 段前后 0pt.
      \sffamily\fontsize{15bp}{20bp}\selectfont
    \fi
    \setlist[achievements]{
      topsep     = 0bp,
      itemsep    = 0bp,
      leftmargin = 1.75cm,
      labelsep   = 0.5cm,
      align      = right,
      label      = [\arabic*],
      resume     = achievements,
    }%
  \fi
}{}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{
  topsep     = 6bp,
  partopsep  = 0bp,
  itemsep    = 6bp,
  parsep     = 0bp,
  leftmargin = 10mm,
  itemindent = 0pt,
  align      = left,
  label      = [\arabic*],
  resume     = achievements,
}
\PassOptionsToPackage{
  linktoc            = all,
  bookmarksdepth     = 2,
  bookmarksnumbered  = true,
  bookmarksopen      = true,
  bookmarksopenlevel = 1,
  bookmarksdepth     = 3,
  unicode            = true,
  psdextra           = true,
  breaklinks         = true,
  plainpages         = false,
  pdfdisplaydoctitle = true,
}{hyperref}
\ifahu@nocolor
\PassOptionsToPackage{
    citecolor=black,
    linkcolor=black,
    urlcolor=black,
  }{hyperref}
\else
\PassOptionsToPackage{
    colorlinks=true,
    citecolor=blue,
    linkcolor=blue,
    urlcolor=blue,
  }{hyperref}
\fi
\AtEndOfPackageFile*{hyperref}{
  \newcounter{ahu@bookmark}
  \renewcommand\ahu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{ahu@bookmark}%
    \pdfbookmark[#1]{#2}{ahuchapter.\theahu@bookmark}%
  }
  \renewcommand\ahu@phantomsection{%
    \phantomsection
  }
  \pdfstringdefDisableCommands{%
    \let\\\relax
    \let\quad\relax
    \let\qquad\relax
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \ifahu@main@language@chinese
    \hypersetup{
      pdflang = zh-CN,
    }%
  \else
    \hypersetup{
      pdflang = en-US,
    }%
  \fi
  \AtBeginDocument{%
    \ifahu@main@language@chinese
      \hypersetup{
        pdftitle    = \ahu@title,
        pdfauthor   = \ahu@author,
        pdfsubject  = \ahu@degree@category,
      }%
    \else
      \hypersetup{
        pdftitle    = \ahu@title@en,
        pdfauthor   = \ahu@author@en,
        pdfsubject  = \ahu@degree@category@en,
      }%
    \fi
    \hypersetup{
      pdfcreator={\ahuthesis-v\version}}
  }%
}
\AtEndOfPackageFile*{mathtools}{
  \@ifpackageloaded{unicode-math}{
    \let\underbrace\LaTeXunderbrace
    \let\overbrace\LaTeXoverbrace
  }{}
}
\AtEndOfPackageFile*{amsthm}{%
  \newtheoremstyle{ahu}
    {\z@}{\z@}
    {\normalfont}{\z@}
    {\normalfont\sffamily}{\ahu@theorem@separator}
    {0.5em}{}
  \theoremstyle{ahu}
  \newtheorem{assumption}{\ahu@assumption@name}[chapter]%
  \newtheorem{definition}{\ahu@definition@name}[chapter]%
  \newtheorem{proposition}{\ahu@proposition@name}[chapter]%
  \newtheorem{lemma}{\ahu@lemma@name}[chapter]%
  \newtheorem{theorem}{\ahu@theorem@name}[chapter]%
  \newtheorem{axiom}{\ahu@axiom@name}[chapter]%
  \newtheorem{corollary}{\ahu@corollary@name}[chapter]%
  \newtheorem{exercise}{\ahu@exercise@name}[chapter]%
  \newtheorem{example}{\ahu@example@name}[chapter]%
  \newtheorem{remark}{\ahu@remark@name}[chapter]%
  \newtheorem{problem}{\ahu@problem@name}[chapter]%
  \newtheorem{claim}{\ahu@claim@name}[chapter]%
  \newtheorem{conjecture}{\ahu@conjecture@name}[chapter]%
  \renewenvironment{proof}[1][\ahu@proof@name]{\par
    \pushQED{\qed}%
    % \normalfont \topsep6\p@\@plus6\p@\relax
    \normalfont \topsep\z@\relax
    \trivlist
    \item[\hskip\labelsep
      %     \itshape
      % #1\@addpunct{.}]\ignorespaces
      \sffamily
      #1]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \renewcommand\qedsymbol{\ahu@qed}
}
\AtEndOfPackageFile*{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\ahu@qed}%
  \newtheorem*{proof}{\ahu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\ahu@theorem@separator}%
  \newtheorem{assumption}{\ahu@assumption@name}[chapter]%
  \newtheorem{definition}{\ahu@definition@name}[chapter]%
  \newtheorem{proposition}{\ahu@proposition@name}[chapter]%
  \newtheorem{lemma}{\ahu@lemma@name}[chapter]%
  \newtheorem{theorem}{\ahu@theorem@name}[chapter]%
  \newtheorem{axiom}{\ahu@axiom@name}[chapter]%
  \newtheorem{corollary}{\ahu@corollary@name}[chapter]%
  \newtheorem{exercise}{\ahu@exercise@name}[chapter]%
  \newtheorem{example}{\ahu@example@name}[chapter]%
  \newtheorem{remark}{\ahu@remark@name}[chapter]%
  \newtheorem{problem}{\ahu@problem@name}[chapter]%
  \newtheorem{claim}{\ahu@claim@name}[chapter]%
  \newtheorem{conjecture}{\ahu@conjecture@name}[chapter]%
}
\PassOptionsToPackage{chapter}{algorithm}
\AtEndOfPackageFile*{algorithm}{
  \floatname{algorithm}{\ahu@algorithm@name}
  \renewcommand\listofalgorithms{%
    \ahu@listof{algorithm}%
  }
  \renewcommand\listalgorithmname{\ahu@list@algorithm@name}
  \def\ext@algorithm{loa}
  \contentsuse{algorithm}{loa}
  \titlecontents{algorithm}
    [\z@]{}
    {\contentspush{\fname@algorithm~\thecontentslabel\quad}}{}
    {\ahu@leaders\thecontentspage}
}
\PassOptionsToPackage{algochapter}{algorithm2e}
\AtEndOfPackageFile*{algorithm2e}{
  \renewcommand\algorithmcfname{\ahu@algorithm@name}
  \SetAlgoCaptionLayout{ahu@caption@font}
  \SetAlCapSty{relax}
  \SetAlgoCaptionSeparator{\hspace*{1em}}
  \SetAlFnt{\fontsize{11bp}{14.3bp}\selectfont}
  \renewcommand\listofalgorithms{%
    \ahu@listof{algorithmcf}%
  }
  \renewcommand\listalgorithmcfname{\ahu@list@algorithm@name}
  \def\ext@algorithmcf{loa}
  \contentsuse{algocf}{loa}
  \titlecontents{algocf}
    [\z@]{}
    {\contentspush{\algorithmcfname~\thecontentslabel\quad}}{}
    {\ahu@leaders\thecontentspage}
}
\ahu@define@key{
  spine-font = {
    name = spine@font,
  },
  spine-title = {
    name = spine@title,
  },
  spine-author = {
    name = spine@author,
  },
  spine-date = {
    name = spine@date,
  },
}
\renewcommand\ahu@spine@font{%
  \fontsize{10.5bp}{15bp}\selectfont
}
\newcommand*\CJKmovesymbol[1]{\raise.3em\hbox{#1}}
\newcommand*\CJKmove{%
  \punctstyle{plain}%
  \let\CJKsymbol\CJKmovesymbol
  \let\CJKpunctsymbol\CJKsymbol
}
\NewDocumentCommand{\spine}{
    O{
      \ifx\ahu@spine@title\@empty
        \ahu@title
      \else
        \ahu@spine@title
      \fi
    }
    O{
      \ifx\ahu@spine@author\@empty
        \ahu@author
      \else
        \ahu@spine@author
      \fi
    }
    O{
      \ifx\ahu@spine@date\@empty
        \ahu@author
      \else
        \ahu@spine@date
      \fi
    }
}{%
  \clearpage
    \newgeometry{
      vmargin = 0cm,
      hmargin = 1cm,
    }%
  \thispagestyle{empty}%
  \ifahu@main@language@chinese
    \ahu@pdfbookmark{0}{书脊}%
  \else
    \ahu@pdfbookmark{0}{Spine}%
  \fi
  \begingroup
    \noindent\hfill
    \rotatebox[origin=lt]{-90}{%
      \makebox[\textheight]{%
        \heiti
        \addCJKfontfeatures*{RawFeature={vertical}}%
        \ahu@spine@font
        \CJKmove
        #1\hspace{2em}
        #2\hspace{2em}
        安徽大学\hspace{2em} \zhdigits{#3} 年
      }%
    }%
  \endgroup
  \clearpage
  \restoregeometry
}
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\sloppy
\endinput
%%
%% End of file `ahuthesis.cls'.
