for i in {1..100}
do
	customer_id=$(sed "${i}q;d" $1 | awk '{print $2}')
	grep "$customer_id" $2 | cut -f 8,9 >> $3/${customer_id}.txt
done
