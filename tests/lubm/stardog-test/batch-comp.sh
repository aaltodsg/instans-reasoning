# Compare all single-university reference answers to Stardog results

# Comment out Stardog server start and stop commands, if server is already running.

stardog-admin server start

./comp.sh q1 lubm1 answers_query1
./comp.sh q2 lubm1 answers_query2
./comp.sh q3 lubm1 answers_query3
./comp.sh q4 lubm1 answers_query4
./comp.sh q5 lubm1 answers_query5
./comp.sh q6 lubm1 answers_query6
./comp.sh q7 lubm1 answers_query7
./comp.sh q8 lubm1 answers_query8
./comp.sh q9 lubm1 answers_query9
./comp.sh q10 lubm1 answers_query10
./comp.sh q11 lubm1 answers_query11
./comp.sh q12 lubm1 answers_query12
./comp.sh q13 lubm1 answers_query13
./comp.sh q14 lubm1 answers_query14

stardog-admin server stop
