#!/bin/bash
# ========== 输出 ==========
# i*j=1*1
# i*j=1*2
# ========== 输出 ==========
for i in 1 2 3 4 5
do
    for j in 1 2 3 4 5
    do
        echo "i*j=$i*$j"
        if [ $j -eq 2 ]
        then
            break 2
        fi
    done
done
exit




