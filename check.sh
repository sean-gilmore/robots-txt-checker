#!/bin/bash
echo 'Checking Sites'
echo '-----------'
echo ''
cat ./sites.txt | while read line
do
  echo $line:
  curl -s $line/robots.txt | grep 'Disallow: /'
  echo ''
done
echo '-----------'
echo 'Done Checking Sites'

