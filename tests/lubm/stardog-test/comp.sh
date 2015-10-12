stardog query -f CSV -r $2 ../queries/$1.rq | tail -n +2 | tr -d '\r' | sort > stardog_result.csv
tail -n +2 ../answers/$3.csv | sort > sample_result.csv
echo $1 "diff results for Stardog (left) and sample (right)"
diff -y -W 150 --suppress-common-lines stardog_result.csv sample_result.csv 
rm stardog_result.csv
rm sample_result.csv
