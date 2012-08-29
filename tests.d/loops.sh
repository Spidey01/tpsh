#!/usr/bin/env tpsh


while true; do echo "Very simple while+break"; break; done
until false; do echo "Very simple until+break"; break; done

# tpsh can't handle this without an external test app. The test builtin and
# code generated for the loop create an error.
#
setenv i 10
while /usr/bin/test "$i" -gt 0 ; do echo "while-test: $i"; setenv i `expr $i - 1`; done
until /usr/bin/test "$i" -gt 10 ; do echo "until-test: $i"; setenv i `expr $i + 1`; done


# not supported yet by the code generator implementation
for lv in a b c d e f g; do echo $lv; done

