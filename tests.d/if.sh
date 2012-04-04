#!/usr/bin/env tpsh

# these are all on one line because tpsh can't handle the other way yet.

if echo "testing basic if statement for truth"; then echo "pass"; fi
# unlike 'if false; then ...' this also kind of will explode if we frakup the
# entire syntax-handling code enough for the embedded keywords to get picked up
# wrong.
if testing basic if statement for falsehood; then echo "fail"; fi


echo "testing if-else statement"
if false; then echo fail; else echo pass; fi

echo "testing if-elsif-else statement for elsif-truth"
if false; then echo "failed in if-then"; elif true; then echo pass; else echo "failed in else"; fi

echo "Running regression test for tpsh_cgen()."
# the embedded ' made the xxxxx version of tpsh_cgen generate bad code.
if supercalifragilisticexpialidocious; then echo "if doesn't work"; elif echo "elif"; then echo "elif passed"; else echo "else passed"; fi

