# Stardog tests over LUBM

Testing of
[the Lehigh University Benchmark](http://swat.cse.lehigh.edu/projects/lubm/)
using the [Stardog](http://stardog.com/) graph database.

## Supported platforms

The scripts here were constructed using the bash shell. Otherwise platform
support depends on Stardog.

## Status

Experiments have been completed and the results are being proposed for
publication.

## Results

The results collected by authors can be found in the [results-folder](https://github.com/aaltodsg/instans-reasoning/tree/master/tests/lubm/results).

## Installation and execution

1. Install [Stardog](http://stardog.com/). Version 3.1.4 community
   license was used in testing. Remember to set `$STARDOG_HOME` as instructed.
2. Add the Stardog bin-directory to your $PATH. Can be tested
   e.g. with `stardog version` from the command line.
3. The following batch files can be executed without parameters:
  * `./stardog_gen.sh` Starts the stardog server, deletes old LUBM
    databases (comment out if they don't exist yet), creates LUBM
    databases for 1, 5 and 10 universities and stops the server.
  * `./batch-comp.sh` Starts Stardog server, compares all LUBM queries
  to reference answers printing the diffs and closes the server.
  * `./batch-speed-no-reason.sh` Starts the Stardog server, measures the speed for all queries
    not needing reasoning (without using the reasoner :-) for 5 and 10
    universities and stops the Stardog server. 
  * `./batch-speed-with-reason.sh` Measures execution speed for all
    the LUBM queries. Starts and stops the server separately for every
    execution, since persistent stability problems were experienced
    otherwise.
4. The following may also be of interest:
  * `stardog_gen_dataonly.sh` Generates the Stardog databases without
    the univ-bench ontology. Can be used to measure setup time and
    count the number of triples for data only.
  * `with-reason.sh q1` Can be used to test any LUBM query with 1
    university (lubm1) and reasoning.
5. Command line examples to execute any individual test case can be found in the above shell scripts.
