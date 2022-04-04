#! /bin/bash 
rm log.txt
rm newlog.txt
rm key.txt
 sudo showkey -a >> log.txt
while read key; do
	echo ${key#*} >>newlog.txt
done <log.txt
cut -c 1-3 newlog.txt |tail +4 >new.txt
awk '{ for(i=1;i<=NF;i++) printf("%c",$i); print "";  }'  new.txt >>key.txt