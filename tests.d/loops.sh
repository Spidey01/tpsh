#!/usr/bin/env tpsh


while true; do echo "Very simple while+break"; break; done
until false; do echo "Very simple until+break"; break; done

# tpsh can't handle this yet.
#
#   - test is not implemented.
#   - variables are interpolated to soon.
#
# while test "$i" -gt 0 ; generates perl code like while ( resolve_cmd("/usr/bin/test", "10", "-gt", "0") == 0 )
#
# So this can't work properly because the test will always become `10 > 0`. 
#

setenv i 10
while test "$i" -gt 0 ; do echo "while-test: $i"; setenv i `expr $i - 1`; done
until test "$i" -gt 10 ; do echo "until-test: $i"; i=`expr $i + 1`; done


# not even supported yet by the new code generator implementation
for lv in a b c d e f g; do echo $lv; done

