#!/usr/bin/env tpsh

echo -------------
echo defining macros
echo -------------

macro basic_macro( echo basic macro )
macro positional_macro( echo macro with $# positional parameters )

alias sh_alias='echo sh style alias with $# positional parameters'

alias csh_alias echo csh style alias with $# positional parameters

sh_function() { echo sh style function with $# positional parameters }

# { } syntax doesn't work yet so only 'function name() simple-command' would work
function bash_function() echo "bash style function with $# positional parameters"

echo -------------
echo testing macros
echo -------------

basic_macro
positional_macro 1 2 3 4 5
sh_alias 1 2 3 4
csh_alias 1 2 3
sh_function 1 2
bash_function 1
