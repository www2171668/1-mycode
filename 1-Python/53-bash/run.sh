#!/bin/bash
# Script to reproduce results  通过./run_experiments.sh来运行

from adInfoHRL_args import *

for ((i=0;i<4;i+=1))
do
	nohup python -u main.py \
  --td3 True \
	--seed "$i" \
  > log/main"$i".log 2>&1 &
  wait
done


echo "结束......"