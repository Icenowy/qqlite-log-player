seed="$2"
tf=$(mktemp)
for i in `seq 1 $1`
do
	echo "$seed" | sh message_gen/one_sentence.sh | tee $tf
	seed=$(cat $tf)
done
rm $tf
