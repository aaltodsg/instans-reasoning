# Test Stardog speed without reasoner

stardog-admin server start

for i in `seq 1 4` ; do
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    SAMPLE=$({ time stardog query -f CSV lubm5 "#Empty" > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    Echo "Empty-query,lubm5,noreasoner,$i,$SAMPLE"
done
./speed-no-reason.sh q1 lubm5
./speed-no-reason.sh q2 lubm5
./speed-no-reason.sh q3 lubm5
./speed-no-reason.sh q14 lubm5

for i in `seq 1 4` ; do
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    SAMPLE=$({ time stardog query -f CSV lubm10 "#Empty" > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    Echo "Empty-query,lubm10,noreasoner,$i,$SAMPLE"
done
./speed-no-reason.sh q1 lubm10
./speed-no-reason.sh q2 lubm10
./speed-no-reason.sh q3 lubm10
./speed-no-reason.sh q14 lubm10

stardog-admin server stop
