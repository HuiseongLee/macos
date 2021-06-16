#!/bin/zsh

PS1="%n %~$ "

PATH=".:$HOME/bin:$PATH"

EDITOR=vim

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias gg='exit'
alias cs='cscope'
alias python='python3'
alias p='python3'
alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -al'
alias history='history -50'
alias h=history

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
