#!/bin/bash
echo 'Checking Sites'
echo '-----------'
echo ''
cat ./sites.txt | while read line
do
  echo $line:
  curl -Is $line | grep 'HTTP'
  echo ''
done
echo '-----------'
echo 'Done Checking Sites'

