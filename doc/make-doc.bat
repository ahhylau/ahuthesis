@echo off

latex ahuthesis.ins

xelatex -shell-escape ahuthesis.dtx

makeindex -s gind.ist -o ahuthesis.ind ahuthesis.idx

xelatex -shell-escape ahuthesis.dtx
xelatex -shell-escape ahuthesis.dtx