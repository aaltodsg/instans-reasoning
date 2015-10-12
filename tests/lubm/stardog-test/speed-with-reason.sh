# Measure Stardog performance with reasoner
# For usage examples please refer to "batch-speed-with-reason.sh"

for i in `seq 1 4` ; do
    stardog-admin server start > /dev/null
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    SAMPLE=$({ time stardog query -f CSV -r $2 ../queries/$1.rq > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    stardog-admin server stop > /dev/null
    Echo "$1,$2,reasoner,$i,$SAMPLE"
done
