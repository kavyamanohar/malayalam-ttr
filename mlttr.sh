#!/bin/bash
filename='words.txt'
outfile='ttr.tsv'
#echo -e "Number of types in a set of 500 tokens" > $outfile
index=98001
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
