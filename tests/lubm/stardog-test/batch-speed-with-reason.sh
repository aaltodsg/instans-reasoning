# Test Stardog speed with the reasoner
# Uses default reasoner, unless configured differently elsewhere

# LUBM5

for i in `seq 1 4` ; do
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    stardog-admin server start > /dev/null
    SAMPLE=$({ time stardog query -f CSV -r lubm5 "#Empty" > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    stardog-admin server stop > /dev/null
    Echo "Empty-query,lubm5,reasoner,$i,$SAMPLE"
done

./speed-with-reason.sh q1 lubm5
./speed-with-reason.sh q2 lubm5
./speed-with-reason.sh q3 lubm5
./speed-with-reason.sh q4 lubm5
./speed-with-reason.sh q5 lubm5
./speed-with-reason.sh q6 lubm5
./speed-with-reason.sh q7 lubm5
./speed-with-reason.sh q8 lubm5
./speed-with-reason.sh q9 lubm5
./speed-with-reason.sh q10 lubm5
./speed-with-reason.sh q11 lubm5
./speed-with-reason.sh q12 lubm5
./speed-with-reason.sh q13 lubm5
./speed-with-reason.sh q14 lubm5

# LUBM10

for i in `seq 1 4` ; do
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    stardog-admin server start > /dev/null
    SAMPLE=$({ time stardog query -f CSV -r lubm10 "#Empty" > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    stardog-admin server stop > /dev/null
    Echo "Empty-query,lubm10,reasoner,$i,$SAMPLE"
done

./speed-with-reason.sh q1 lubm10
./speed-with-reason.sh q2 lubm10
./speed-with-reason.sh q3 lubm10
./speed-with-reason.sh q4 lubm10
./speed-with-reason.sh q5 lubm10
./speed-with-reason.sh q6 lubm10
./speed-with-reason.sh q7 lubm10
./speed-with-reason.sh q8 lubm10
./speed-with-reason.sh q9 lubm10
./speed-with-reason.sh q10 lubm10
./speed-with-reason.sh q11 lubm10
./speed-with-reason.sh q12 lubm10
./speed-with-reason.sh q13 lubm10
./speed-with-reason.sh q14 lubm10

# LUBM100

for i in `seq 1 4` ; do
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    stardog-admin server start > /dev/null
    SAMPLE=$({ time stardog query -f CSV -r lubm100 "#Empty" > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    stardog-admin server stop > /dev/null
    Echo "Empty-query,lubm100,reasoner,$i,$SAMPLE"
done

./speed-with-reason.sh q1 lubm100
./speed-with-reason.sh q2 lubm100
./speed-with-reason.sh q3 lubm100
./speed-with-reason.sh q4 lubm100
./speed-with-reason.sh q5 lubm100
./speed-with-reason.sh q6 lubm100
./speed-with-reason.sh q7 lubm100
./speed-with-reason.sh q8 lubm100
./speed-with-reason.sh q9 lubm100
./speed-with-reason.sh q10 lubm100
./speed-with-reason.sh q11 lubm100
./speed-with-reason.sh q12 lubm100
./speed-with-reason.sh q13 lubm100
./speed-with-reason.sh q14 lubm100
