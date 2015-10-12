#!/bin/bash

# Time 4 samples of Jena-LUBM with a selectable reasoner

function params () {
    echo "Three parameters required: 1 2 3"
    echo "1 = name of the query file"
    echo "2 = name of the data directory/file"
    echo "3 = Jena reasoner name: Transitive | RDFSSimple | RDFS | OWLMicro | OWLMini | OWL"
    echo "All of the above parameters are supplied without the file name suffixes."
    echo "System variable LUBM_HOME must point to the lubm root."
    echo "REASONERJENA_HOME must point to the root of the jenalubm project."
    exit 1
}

if [ "$#" -ne 3 ]; then
    params
fi

ORIGINALPATH=`pwd`
JENALUBM_HOME="/Users/rinnem2/Dev/AaltoDSG/jena-lubm"

PT=`pwd`
cd ..
PR=`pwd`
OP="$PR/ontology"
QP="$PR/queries"
DP="$PR/data"

cd "$REASONERJENA_HOME"

for i in `seq 1 4` ; do
  SBT_COMMAND='run --csv-output=/dev/null -s "'"$OP"'/univ-bench.ttl" -r "'"$3"'" -q "'"$QP/$1"'.rq" --time=- -d "'"$DP/$2"'.ttl"'
  JENATIME=$(sbt ''"$SBT_COMMAND"'' | grep Done | sed 's/[^0-9+\.0-9+]//g')
  Echo "Jena,$1,$2,$3,$i,$JENATIME"
done

cd "$ORIGINALPATH"
