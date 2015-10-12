# Can be used to test any LUBM query with lubm1 and reasoning turned on
# use e.g. "q1" as parameter
# stardog server must be running.

stardog query -f CSV -r lubm1 ../queries/$1.rq
