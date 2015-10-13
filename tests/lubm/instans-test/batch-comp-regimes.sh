# Compare INSTANS output to reference answers
# Pre-defined entailment regimes
# 1 University

PT=`pwd`
RP="$PT/../../../rules"

./static-comp-with-reason.sh q4 "-r $RP/rhodf-rules.rq" answers_query4
# q4-dstar produces unnecessary blank nodes
# ./static-comp-with-reason.sh q4 "-r $RP/dstar-rules.rq" answers_query4
./static-comp-with-reason.sh q4 "-r $RP/rdfs-rules.rq" answers_query4

./static-comp-with-reason.sh q5 "-r $RP/rhodf-rules.rq" answers_query5
./static-comp-with-reason.sh q5 "-r $RP/dstar-rules.rq" answers_query5
./static-comp-with-reason.sh q5 "-r $RP/rdfs-rules.rq" answers_query5

./static-comp-with-reason.sh q11 "-r $RP/rdfp-rules.rq" answers_query11

./static-comp-with-reason.sh q13 "-r $RP/dstar-rules.rq -r $RP/rdfp-rules.rq" answers_query13

# OWL 2 RL tests

# q4 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q4 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query4
# q5 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q5 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query5
# q6 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q6 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query6
# q7 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q7 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query7
# q8 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q8 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query8
# q9 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q9 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query9
# q10 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q10 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query10
# q11 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q11 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query11
# q12 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q12 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query12
# q13 crashes heap with OWL2 RL
# ./static-comp-with-reason.sh q13 "-r $RP/list-handler.rq -r $RP/owl2rl-rules.rq" answers_query13
