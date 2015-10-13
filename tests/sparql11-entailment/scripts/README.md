# SPARQL 1.1 Test Suite with INSTANS

Running
[SPARQL 1.1 Test Suite Entailment Category](http://www.w3.org/2009/sparql/implementations/)
using the [INSTANS](http://instans.org/) event processing platform.

## Supported platforms

The scripts here were constructed using bash shell. Otherwise platform
support is likely dependent on the current situation on INSTANS.

## Status

The tests are expected to be functional.

## Installation and execution

1. Install [INSTANS](https://github.com/aaltodsg/instans)
2. Set `$INSTANS_HOME` environment variable to point to the root directory of INSTANS.
3. The following batch files can be executed without parameters:
  * `./batch-comp-instans.sh` Compare INSTANS results to reference
    answers, using custom rules for each test. A [sample result file](https://github.com/aaltodsg/instans-reasoning/blob/master/tests/sparql11-entailment/results/sample-batch-comp-13102015.txt) is available.
  * `./batch-run-instans.sh` Execute all tests, which have correctly
    reproduced the reference answers, using custom rules for each test.
4. Please note that the sets above do not include the 27 tests, which
   produce the correct result without any entailments.
5. Command line examples to execute any individual test case can be
found in the above shell scripts.
6. To test anything else than the customised rulesets, please refer to
   `run-instans.sh`, which has proposals for (combinations of) different
   entailment regimes.
