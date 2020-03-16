#!/bin/bash

set -x

mkdir ./hpi

COUNT=1
while read LINE
do
  wget --quiet -O ./hpi/"$COUNT"-"$LINE" https://updates.jenkins.io/latest/"$LINE"
  COUNT=$(expr $COUNT + 1)
done < ./list.txt
