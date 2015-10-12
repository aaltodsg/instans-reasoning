./run-instans.sh $1 $2 | tail -n +2 | sort > instans_result.csv
tail -n +2 ../results/$1.csv | sort > sample_result.csv
echo $1 "diff results for Instans (left) and sample (right)"
diff -y -W 150 --suppress-common-lines instans_result.csv sample_result.csv 
rm instans_result.csv
rm sample_result.csv
