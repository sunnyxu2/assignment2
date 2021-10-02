> $3
for FILE in $1/*.txt 
do
	correlation=$(.$2/datamash -W ppearson 1:2 < $FILE)
	avg_help=$(.$2/datamash -W mean 1 < $FILE)
	avg_star=$(.$2/datamash -W mean 2 < $FILE)
	printf "%s %s %s %s\n" "$FILE" "$correlation" "$avg_help" "$avg_star" >> $3
	
done

