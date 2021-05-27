#!/bin/zsh

PS1="%n %~$ "

PATH="~/bin:$PATH"

EDITOR=vim

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias gg='exit'
