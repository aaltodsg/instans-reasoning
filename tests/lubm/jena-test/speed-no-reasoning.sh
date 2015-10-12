#!/bin/bash

# Time 4 samples of Jena-LUBM without reasoning

function params () {
    echo "Two parameters required: 1 2"
    echo "1 = name of the query file"
    echo "2 = name of the data directory/file"
    echo "All of the above parameters are supplied without the file name suffixes."
    echo "REASONERJENA_HOME must point to the root of the jenalubm project."
    exit 1
}

if [ "$#" -ne 2 ]; then
    params
fi

PT=`pwd`
cd ..
PR=`pwd`
QP="$PR/queries"
DP="$PR/data"

cd "$REASONERJENA_HOME"

for i in `seq 1 4` ; do
  SBT_COMMAND='run --csv-output=/dev/null -q "'"$QP/$1"'.rq" --time=- -d "'"$DP/$2"'.ttl"'
  JENATIME=$(sbt ''"$SBT_COMMAND"'' | grep Done | sed 's/[^0-9+\.0-9+]//g')
  Echo "Jena,$1,$2,norules,$i,$JENATIME"
done

cd "$PT"
