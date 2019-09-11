#!/bin/bash
# ========== 输出 ==========
#  i*j=1*1
#  i*j=1*2
#  i*j=2*1
#  i*j=2*2
#  i*j=3*1
#  i*j=3*2
#  i*j=4*1
#  i*j=4*2
#  i*j=5*1
#  i*j=5*2
# ========== 输出 ==========

for i in 1 2 3 4 5
do
    for j in 1 2 3 4 5
    do
        echo "i*j=$i*$j"
        if [ $j -eq 2 ]
        then
            break
        fi
    done
done
exit



