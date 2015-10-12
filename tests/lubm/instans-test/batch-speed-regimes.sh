# Run INSTANS comparison results for different applicable regimes

PT=`pwd`
RP="$PT/../../../rules"

# 5 Universities
./speed-with-reason.sh q4 Uni5 "-r $RP/rhodf-rules.rq"
./speed-with-reason.sh q4 Uni5 "-r $RP/dstar-rules.rq"
./speed-with-reason.sh q4 Uni5 "-r $RP/rdfs-rules.rq"

./speed-with-reason.sh q5 Uni5 "-r $RP/rhodf-rules.rq"
./speed-with-reason.sh q5 Uni5 "-r $RP/dstar-rules.rq"
./speed-with-reason.sh q5 Uni5 "-r $RP/rdfs-rules.rq"

./speed-with-reason.sh q11 Uni5 "-r $RP/rdfp-rules.rq"

./speed-with-reason.sh q13 Uni5 "-r $RP/dstar-rules.rq -r $RP/rdfp-rules.rq"
