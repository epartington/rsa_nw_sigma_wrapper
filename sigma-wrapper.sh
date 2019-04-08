#!/bin/bash
root='/root/sigma/sigma-master'
for filename in $root/rules/windows/builtin/*.yml; do
    for ((i=0; i<=3; i++)); do
        #./MyProgram.exe "$filename" "Logs/$(basename "$filename" .txt)_Log$i.txt"
        echo $filename
        python36 $root/tools/sigmac -t netwitness $filename --config $root/tools/config/netwitness.yml -I
    done
done