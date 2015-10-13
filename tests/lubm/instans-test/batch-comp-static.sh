# INSTANS batch comparison to sample answers using static memory handling and rules

PT=`pwd`
CRP="$PT/custom-rules"

./static-comp-no-reason.sh q1 answers_query1
./static-comp-no-reason.sh q2 answers_query2
./static-comp-no-reason.sh q3 answers_query3
./static-comp-with-reason.sh q4 "-r $CRP/q4-rules.rq" answers_query4
./static-comp-with-reason.sh q5 "-r $CRP/q5-owl2rl-rules.rq" answers_query5
./static-comp-with-reason.sh q6 "-r $CRP/q6-10-rules.rq" answers_query6
./static-comp-with-reason.sh q7 "-r $CRP/q6-10-rules.rq" answers_query7
./static-comp-with-reason.sh q8 "-r $CRP/q6-10-rules.rq" answers_query8
# Q9 crashes the heap with static
# ./static-comp-with-reason.sh q9 "-r $CRP/q6-10-rules.rq" answers_query9
./static-comp-with-reason.sh q10 "-r $CRP/q6-10-rules.rq" answers_query10
./static-comp-with-reason.sh q11 "-r $CRP/q11-rules.rq" answers_query11
./static-comp-with-reason.sh q12 "-r $CRP/q12-rules.rq" answers_query12
./static-comp-with-reason.sh q13 "-r $CRP/q13-rules.rq" answers_query13
./static-comp-no-reason.sh q14 answers_query14

