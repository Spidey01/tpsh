#!/usr/bin/env tpsh

# on one line because tpsh can't handle the other way yet.
if echo 'running first if test'; then echo "if passed"; elif echo "elif"; then echo "elif passed"; else echo "else passed"; fi

echo 'running second if test'
# the embedded ' break this
#if supercalifragilisticexpialidocious; then echo "if doesn't work"; elif echo "elif"; then echo "elif passed"; else echo "else passed"; fi
if supercalifragilisticexpialidocious; then echo "if command - passed"; else "if command - failed"; fi
