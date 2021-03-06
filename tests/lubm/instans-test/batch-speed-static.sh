# INSTANS speed tests with optimised rules and static memory handling

PT=`pwd`
CRP="$PT/custom-rules"

# 5 Universities

./static-speed-no-reason.sh q1 Uni5

# Skipping Q2 - static crashes heap
# ./static-speed-no-reason.sh q2 Uni5

./static-speed-no-reason.sh q3 Uni5
./static-speed-with-reason.sh q4 Uni5 "-r $CRP/q4-rules.rq"
./static-speed-with-reason.sh q5 Uni5 "-r $CRP/q5-owl2rl-rules.rq"
./static-speed-with-reason.sh q6 Uni5 "-r $CRP/q6-10-rules.rq"

# Skipping Q7 - static crashes heap
# ./static-speed-with-reason.sh q7 Uni5 "-r $CRP/q6-10-rules.rq"

./static-speed-with-reason.sh q8 Uni5 "-r $CRP/q6-10-rules.rq"

# Skipping Q9 - static crashes heap
# ./static-speed-with-reason.sh q9 Uni5 "-r $CRP/q6-10-rules.rq"

./static-speed-with-reason.sh q10 Uni5 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q11 Uni5 "-r $CRP/q11-rules.rq"

# Q12 does not finish
# ./static-speed-with-reason.sh q12 Uni5 "-r $CRP/q12-rules.rq"

./static-speed-with-reason.sh q13 Uni5 "-r $CRP/q13-rules.rq"
./static-speed-no-reason.sh q14 Uni5

# 10 Universities

./static-speed-no-reason.sh q1 Uni10

# Skipping Q2 - static crashes heap
# ./static-speed-no-reason.sh q2 Uni10

./static-speed-no-reason.sh q3 Uni10
./static-speed-with-reason.sh q4 Uni10 "-r $CRP/q4-rules.rq"
./static-speed-with-reason.sh q5 Uni10 "-r $CRP/q5-owl2rl-rules.rq"

# Skipping Q6, Q8, Q10 - do not finish
# ./static-speed-with-reason.sh q6 Uni10 "-r $CRP/q6-10-rules.rq"

# Skipping Q7 - static crashes heap
# ./static-speed-with-reason.sh q7 Uni10 "-r $CRP/q6-10-rules.rq"

./static-speed-with-reason.sh q8 Uni10 "-r $CRP/q6-10-rules.rq"

# Skipping Q9 - static crashes heap
# ./static-speed-with-reason.sh q9 Uni10 "-r $CRP/q6-10-rules.rq"

./static-speed-with-reason.sh q10 Uni10 "-r $CRP/q6-10-rules.rq"
./static-speed-with-reason.sh q11 Uni10 "-r $CRP/q11-rules.rq"

# Skipping Q12 - does not finish
# ./static-speed-with-reason.sh q12 Uni10 "-r $CRP/q12-rules.rq"

./static-speed-with-reason.sh q13 Uni10 "-r $CRP/q13-rules.rq"
./static-speed-no-reason.sh q14 Uni10

# 100 Universities

./static-speed-no-reason.sh q1 Uni100

# Skipping Q2 - crashes heap
# ./static-speed-no-reason.sh q2 Uni100

./static-speed-no-reason.sh q3 Uni100
./static-speed-with-reason.sh q4 Uni100 "-r $CRP/q4-rules.rq"

# Skipping Q5 - static crashes heap
# ./static-speed-with-reason.sh q5 Uni100 "-r $CRP/q5-owl2rl-rules.rq"

# ./static-speed-with-reason.sh q6 Uni100 "-r $CRP/q6-10-rules.rq"
# ./static-speed-with-reason.sh q7 Uni100 "-r $CRP/q6-10-rules.rq"
# ./static-speed-with-reason.sh q8 Uni100 "-r $CRP/q6-10-rules.rq"

# Skipping Q9 - static crashes heap
# ./static-speed-with-reason.sh q9 Uni100 "-r $CRP/q6-10-rules.rq"

# ./static-speed-with-reason.sh q10 Uni100 "-r $CRP/q6-10-rules.rq"
# ./static-speed-with-reason.sh q11 Uni100 "-r $CRP/q11-rules.rq"
# ./static-speed-with-reason.sh q12 Uni100 "-r $CRP/q12-rules.rq"

./static-speed-with-reason.sh q13 Uni100 "-r $CRP/q13-rules.rq"
./static-speed-no-reason.sh q14 Uni100
