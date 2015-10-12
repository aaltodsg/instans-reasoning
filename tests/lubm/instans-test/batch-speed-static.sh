# INSTANS speed tests with optimised rules and static memory handling

PT=`pwd`
CRP="$PT/custom-rules"

# 5 Universities
./static-speed-no-reason.sh q1 Uni5
# Skipping Q2 - crashes heap
# ./static-speed-no-reason.sh q2 Uni5
./static-speed-no-reason.sh q3 Uni5
./static-speed-with-reason.sh q4 Uni5 "-r $CRP/q4-rules.rq"
./static-speed-with-reason.sh q5 Uni5 "-r $CRP/q5-owl2rl-rules.rq"
./static-speed-with-reason.sh q6 Uni5 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q7 Uni5 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q8 Uni5 "-r $CRP/q6-10-rules.rq"
# Skipping Q9 - static crashes heap
# ./static-speed-with-reason.sh q9 Uni5 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q10 Uni5 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q11 Uni5 "-r $CRP/q11-rules.rq"
./static-speed-with-reason.sh q12 Uni5 "-r $CRP/q12-rules.rq"
./static-speed-with-reason.sh q13 Uni5 "-r $CRP/q13-rules.rq"
./static-speed-no-reason.sh q14 Uni5

# 10 Universities
./static-speed-no-reason.sh q1 Uni10
# Skipping Q2 - crashes heap
# ./static-speed-no-reason.sh q2 Uni10
./static-speed-no-reason.sh q3 Uni10
./static-speed-with-reason.sh q4 Uni10 "-r $CRP/q4-rules.rq"
./static-speed-with-reason.sh q5 Uni10 "-r $CRP/q5-owl2rl-rules.rq"
./static-speed-with-reason.sh q6 Uni10 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q7 Uni10 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q8 Uni10 "-r $CRP/q6-10-rules.rq"
# Skipping Q9 - static crashes heap
./static-speed-with-reason.sh q9 Uni10 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q10 Uni10 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q11 Uni10 "-r $CRP/q11-rules.rq"
./static-speed-with-reason.sh q12 Uni10 "-r $CRP/q12-rules.rq"
./static-speed-with-reason.sh q13 Uni10 "-r $CRP/q13-rules.rq"
./static-speed-no-reason.sh q14 Uni10
