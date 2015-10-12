# INSTANS event-based execution, comparison to sample answers, no reasoner

PT=`pwd`
QP="$PT/../queries"
OP="$PT/../ontology"
DP="$PT/../data"
AP="$PT/../answers"
CRP="$PT/custom-rules"

$INSTANS_HOME/bin/instans -r $CRP/event-tracker-no-ontology.rq -r $QP/$1.rq -i $DP/Uni1.ttl | tail -n +2 | sort > instans_result.csv
tail -n +2 $AP/$2.csv | sort > sample_result.csv
echo $1 "norules diff results for Instans (left) and sample (right)"
diff -y -W 150 --suppress-common-lines instans_result.csv sample_result.csv 
rm instans_result.csv
rm sample_result.csv
