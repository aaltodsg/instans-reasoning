# Jena tests over LUBM

Testing of
[the Lehigh University Benchmark](http://swat.cse.lehigh.edu/projects/lubm/)
using the [Apache Jena](https://jena.apache.org/) Java framework.

## Supported platforms

The scripts here were constructed using the bash shell. Otherwise platform
support depends on Jena.

## Status

Experiments have been completed and the results are being proposed for
publication.

## Results

The results collected by authors can be found in the "results"-folder
one level up.

## Installation and execution

1. Clone [reasoner-jena](https://github.com/aaltodsg/reasoner-jena)
   from github. Set `$REASONERJENA_HOME` to point to the root of the
   repository. `sbt` (must be installed) should take care of
   everything else. We used SBT version 0.13.8.
2. The following batch files can be executed without parameters:
  * `./batch-comp-reasoners.sh` Compares Jena results to reference
    answers with different reasoners from simpler (and faster) to more
    complex. If "diff" indicates no difference, the results are
    identical.
  * `./batch-speed.sh` Times Jena execution using the fastest
    reasoners, which produced the correct answers. Please note that
    the full OWL reasoner may not complete.
3. Command line examples to execute any individual test case can be found in the above shell scripts.
