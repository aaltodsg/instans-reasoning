#!/bin/bash

# Compare Jena LUBM results against official sample answers

function params () {
    echo "Four parameters required: 1 2 3 4"
    echo "1 = name of the query file"
    echo "2 = name of the data directory/file"
    echo "3 = name of the sample answer file"
    echo "4 = Jena reasoner name: Transitive | RDFSSimple | RDFS | OWLMicro | OWLMini | OWL"
    echo "All of the above parameters are supplied without the file name suffixes."
    echo "REASONERJENA_HOME must point to the root of the jenalubm project."
    exit 1
}

if [ "$#" -ne 4 ]; then
    params
fi

PT=`pwd`
cd ..
PR=`pwd`
OP="$PR/ontology"
QP="$PR/queries"
DP="$PR/data"
AP="$PR/answers"


cd "$REASONERJENA_HOME"

SBT_COMMAND='run --csv-output "'"$PT"'/jena_unsorted.csv" -s "'"$OP"'/univ-bench.ttl" -r "'"$4"'" -q "'"$QP/$1"'.rq" --time=- -d "'"$DP/$2"'.ttl"'
JENATIME=$(sbt ''"$SBT_COMMAND"'' | grep Done | sed 's/[^0-9+\.0-9+]//g')
Echo "Jena,$1,$2,$4,$JENATIME"

cd "$PT"

tail -n +2 jena_unsorted.csv | tr -d '\r' | sort > jena_result.csv
tail -n +2 $AP/$3.csv | sort > sample_result.csv

echo $1 "diff results for Jena (left) and sample (right)"
diff -y -W 150 --suppress-common-lines jena_result.csv sample_result.csv
rm jena_unsorted.csv
rm jena_result.csv
rm sample_result.csv
