#!/bin/bash
filename='words.txt'
outfile='ttr.tsv'
#Count the number of types in a window of 500 tokens and write it to outfile
#To begin with Set start=1, index=1 and loop with condition $index -le 1000. 
#Next set start=1001, index=1001 and loop with $index -le 2000
#Repeat for any interval for which you need to determine Type-Token Relationshipindex=98001
start=98001
end=$(( $start + 499 ))
while [ $index -le 100000 ]
do
	# echo -e $index"\t"$start"\t"$end"\t" >> $outfile
	sed -n "$start,$end p" words.txt | sort -u |wc -l >> $outfile
	index=$(( $index + 1 ))
	start=$(( $start + 1 ))
	end=$(( $start + 499 ))
done
