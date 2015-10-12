for i in `seq 1 4` ; do
    # Note! If execution time exceeds 1 minute, remove the sed-part!!
    SAMPLE=$({ time stardog query -f CSV $2 ../queries/$1.rq > /dev/null; } 2>&1 | grep real | sed 's/[^0-9+\.0-9+]//g' )
    Echo "$1,$2,noreasoner,$i,$SAMPLE"
done
