# Tests INSTANS speed without reasoning

PT=`pwd`
QP="$PT/../queries"
OP="$PT/../ontology"
DP="$PT/../data"
AP="$PT/../answers"

for i in `seq 1 4` ; do
    INSTANSTIME=$(eval "$INSTANS_HOME/bin/instans --rdf-operations=add:execute:flush --select-output-csv=/dev/null --prefix-encoding=true --print-prefix-encodings=false -r \"$QP/$1.rq\" --time=- -i \"$DP/$2.ttl\"" | grep Done | sed 's/[^0-9+\.0-9+]//g')
    Echo "$1,$2,norules,$i,$INSTANSTIME"
done
