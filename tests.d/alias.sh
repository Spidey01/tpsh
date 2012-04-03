#!/usr/bin/env tpsh

alias
# assert $? = 0

alias foo
# assert $? = 1

alias ham=spam
# assert $? = 0
alias ham
# assert $? = 0

alias eggs quux
# assert $? = 0

alias eggs
# assert $? = 0
