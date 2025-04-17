#!/bin/bash

start=$1
end=$2

> inputFile

for ((i=$start; i<=$end; i++))
do
  echo "$i,$((i * i))" >> inputFile
done
