# INSTANS tests over LUBM

Testing of
[the Lehigh University Benchmark](http://swat.cse.lehigh.edu/projects/lubm/)
using the [INSTANS](http://instans.org/) event
processing platform.

## Supported platforms

The scripts here were constructed using bash shell. Otherwise platform
support is likely dependent on the current situation on INSTANS.

## Status

Experiments have been completed and the results are being proposed for
publication.

## Results

The results collected by authors can be found in the "results"-folder
one level up.

## Installation and execution

1. Install [INSTANS](https://github.com/aaltodsg/instans)
2. Set `$INSTANS_HOME` environment variable to point to the root directory of INSTANS
3. The following batch files can be executed without parameters:
  * `./batch-comp-regimes.sh` Compare INSTANS output to reference
    answers on applicable entailment regimes.
  * `./batch-comp-evnt-all-rules.sh` Compare INSTANS output to
    reference answers using event-based
    memory handling (each department cleared after processing) on a
    custom set of rules containing all rules needed for LUBM.
  * `./batch-comp-static.sh` Compare INSTANS output to reference
    answers using static
    memory handling (departments not cleared during execution) on
    optimised query-specific rule sets
  * `./batch-comp-evnt.sh` Compare INSTANS output to reference
    answers using event-based
    memory handling (each department cleared after processing) on
    optimised query-specific rule sets
  * `./batch-speed-regimes.sh` Measure INSTANS execution speed on applicable entailment regimes.
  * `./batch-speed-best-regime.sh` Measure INSTANS execution speed on
    the fastest regime per query.
  * `./batch-speed-static.sh` Measure INSTANS execution speed using static
    memory handling (departments not cleared during execution) on
    optimised query-specific rule sets 
  * `./batch-speed-evnt.sh` Measure INSTANS execution speed using event-based
    memory handling (each department cleared after processing) on
    optimised query-specific rule sets 
4. Command line examples to execute any individual test case can be found in the above shell scripts.
