#!/bin/bash

today=$(date +%Y%m%d)
last=$(ls -got /home --full-time | tr -s ' ' | cut -d ' ' -f4)
U=$(ls -got /home --full-time | tr -s ' ' | cut -d ' ' -f7)
anc=$(date -d "6 month ago" +%F)
for i in $last
do
#da=$(date -d "$i" +"%Y-%m-%d")
U=$(ls -got /home --full-time | tr -s ' ' | cut -d ' ' -f7)
da=$(date -d "$i" +%F)
if [[ $da < $anc ]];
then
echo 'Delete' $U
else
        echo 'No Action for USER '$U' ';
fi
done
