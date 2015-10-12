# Execute speed tests with INSTANS using reasoning and static approach to memory

PT=`pwd`
QP="$PT/../queries"
OP="$PT/../ontology"
DP="$PT/../data"
AP="$PT/../answers"

for i in `seq 1 4` ; do
    INSTANSTIME=$(eval "$INSTANS_HOME/bin/instans --rdf-operations=add:execute:flush --prefix-encoding=true --print-prefix-encodings=false --select-output-csv=/dev/null $3 -r \"$QP/$1.rq\" -i \"$OP/univ-bench.ttl\" --time=- -i \"$DP/$2.ttl\"" | grep Done | sed 's/[^0-9+\.0-9+]//g')
    Echo "$1,$2,$3,$i,$INSTANSTIME"
done
