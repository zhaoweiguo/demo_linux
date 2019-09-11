#!/bin/bash
# ========== 输出 ==========
#  i*j=1*1
#  i*j=1*3
#  i*j=1*4
#  i*j=1*5
#  i*j=2*1
#  i*j=2*3
#  i*j=2*4
#  i*j=2*5
#  i*j=3*1
#  i*j=3*3
#  i*j=3*4
#  i*j=3*5
#  i*j=4*1
#  i*j=4*3
#  i*j=4*4
#  i*j=4*5
#  i*j=5*1
#  i*j=5*3
#  i*j=5*4
#  i*j=5*5
# ========== 输出 ==========
for i in 1 2 3 4 5
do
    for j in 1 2 3 4 5
    do
        if [ $j == 2 ]
        then
            continue 
        fi
        echo "i*j=$i*$j"
    done
done
exit

