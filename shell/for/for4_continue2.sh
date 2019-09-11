#!/bin/bash
# ========== 输出 ==========
#  i*j=1*1
#  i*j=2*1
#  i*j=3*1
#  i*j=4*1
#  i*j=5*1
# ========== 输出 ==========
for i in 1 2 3 4 5
do
    for j in 1 2 3 4 5
    do
        if [ $j == 2 ]
        then
            continue 2
        fi
        echo "i*j=$i*$j"
    done
done
exit

