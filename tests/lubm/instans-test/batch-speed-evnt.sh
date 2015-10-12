# INSTANS speed tests with optimised rules and event-based memory handling

PT=`pwd`
CRP="$PT/custom-rules"

# 5 Universities
# ./evnt-speed-no-reason.sh q1 Uni5
# ./evnt-speed-no-reason.sh q2 Uni5
# ./evnt-speed-no-reason.sh q3 Uni5
./evnt-speed-with-reason.sh q4 Uni5 "-r $CRP/evnt-q4-rules.rq"
./evnt-speed-with-reason.sh q5 Uni5 "-r $CRP/evnt-q5-owl2rl-rules.rq"
./evnt-speed-with-reason.sh q6 Uni5 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q7 Uni5 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q8 Uni5 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q9 Uni5 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q10 Uni5 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q11 Uni5 "-r $CRP/evnt-q11-rules.rq"
./evnt-speed-with-reason.sh q12 Uni5 "-r $CRP/evnt-q12-rules.rq"
./evnt-speed-with-reason.sh q13 Uni5 "-r $CRP/evnt-q13-rules.rq"
./evnt-speed-no-reason.sh q14 Uni5
# 10 Universities
./evnt-speed-no-reason.sh q1 Uni10
# ./evnt-speed-no-reason.sh q2 Uni10
./evnt-speed-no-reason.sh q3 Uni10
./evnt-speed-with-reason.sh q4 Uni10 "-r $CRP/evnt-q4-rules.rq"
./evnt-speed-with-reason.sh q5 Uni10 "-r $CRP/evnt-q5-owl2rl-rules.rq"
./evnt-speed-with-reason.sh q6 Uni10 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q7 Uni10 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q8 Uni10 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q9 Uni10 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q10 Uni10 "-r $CRP/evnt-q6-10-rules.rq"
./evnt-speed-with-reason.sh q11 Uni10 "-r $CRP/evnt-q11-rules.rq"
./evnt-speed-with-reason.sh q12 Uni10 "-r $CRP/evnt-q12-rules.rq"
./evnt-speed-with-reason.sh q13 Uni10 "-r $CRP/evnt-q13-rules.rq"
./evnt-speed-no-reason.sh q14 Uni10
