# Run INSTANS results for the best (fastest) regimes

# Include those LUBM queries, which don't need OWL 2 RL

PT=`pwd`
RP="$PT/../../../rules"

# 5 Universities
./static-speed-with-reason.sh q4 Uni5 "-r $RP/rdfs-rules.rq"
./static-speed-with-reason.sh q5 Uni5 "-r $RP/rdfs-rules.rq"
./static-speed-with-reason.sh q11 Uni5 "-r $RP/rdfp-rules.rq"
./static-speed-with-reason.sh q13 Uni5 "-r $RP/dstar-rules.rq -r $RP/rdfp-rules.rq"

# 10 Universities
./static-speed-with-reason.sh q4 Uni10 "-r $RP/rdfs-rules.rq"
./static-speed-with-reason.sh q5 Uni10 "-r $RP/rdfs-rules.rq"
./static-speed-with-reason.sh q11 Uni10 "-r $RP/rdfp-rules.rq"
./static-speed-with-reason.sh q13 Uni10 "-r $RP/dstar-rules.rq -r $RP/rdfp-rules.rq"
