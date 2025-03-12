## 欢迎使用 ahuthesis (安徽大学论文模板)

此项目旨在建立一个简单易用的安徽大学学位论文 LaTeX 模板, 包括硕士论文、博士论文以及博士后出站报告.
本科生毕业设计目前暂不支持, 后续会上线此功能. 本模板基于研究生院发布的《研究生撰写学位论文的规定》的 Word 模板编写而成.

1. 在使用模板前, 请首先阅读用户手册 ahuthesis.pdf, 其中详尽阐述了模板的特性和使用方法.

2. 本模板要求 TeX Live、MacTeX、MiKTeX 不低于 2017 年的发行版.

3. **不支持** [CTeX 套装].

## 模板的核心组成

- 核心文档类
  - `ahuthesis.cls`
- 参考文献格式文件
  - `ahuthesis-numeric.bst`
  - `ahuthesis-author-year.bst`
- 参考文献数据库
  - `refs.bib`
- 配置文件
  - `ahusetup.tex`
- 使用示例
  - `ahuthesis-example.tex`

### 使用示例

```latex
% !TeX encoding = UTF-8
% !TeX program = xelatex

\documentclass[degree=doctor]{ahuthesis}
  % 学位 degree:
  %  doctor (默认) | master | bachelor | postdoc
  % 学位类型 degree-type:
  %  academic (默认) | professional
  % 语言 language
  %  chinese (默认) | english
  % 字体库 fontset
  %  windows | mac | ubuntu
  % 超链接的彩色模式: 
  % nocolor
  % 建议终版使用 Windows 平台的字体编译

% 论文基本配置, 加载宏包等全局配置
\input{ahusetup}

\begin{document}

% 封面 (博士/硕士的封面是否显示. 如果不需要封面可将此命令注释掉)
\makecover
% 提名页
\maketitle

% 使用授权的说明
\copyrightpage

\frontmatter
\input{chapters/abstract}

% 目录
\tableofcontents

% 插图和附表清单
% \listoffiguresandtables  % 插图和附表清单(仅限研究生)
\listoffigures           % 插图清单
\listoftables            % 附表清单

% 符号对照表
\input{chapters/denotation}

% 正文部分
\mainmatter
\input{chapters/chap01}
\input{chapters/chap02}
\input{chapters/chap03}
\input{chapters/chap04}

% 其他部分
\backmatter

% 参考文献
\bibliography{refs}       

% 附录
\appendix
\input{chapters/appendix}

% 致谢
\input{chapters/acknowledgements}

% 声明
% 将签字扫描后的声明文件 scan-statement.pdf 替换原始页面
% \statement[file=scan-statement.pdf]
% 研究生编译生成时有页眉页脚, 插入扫描版时不再重复.
% 也可以手动控制是否加页眉页脚
% \statement[page-style=empty]
% \statement[file=scan-statement.pdf, page-style=plain]

\input{chapters/resume}
\end{document}
```

## 重要提醒

1. 本模板未经学校相关部门审核及授权, 使用前请务必斟酌.
2. 任何由于使⽤本模板⽽引起的论⽂格式审查问题均与本模板作者⽆关.

## 贡献

如果您有任何改进意见或者功能需求, 欢迎提交 [issue](https://github.com/ahhylau/ahuthesis/issues) 或 [pull request](https://github.com/ahhylau/ahuthesis/pulls).
