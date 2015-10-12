# Run entailment tests on INSTANS with different sets of rules.

# By default tests are run on the test-specific rulesets. Please comment out the test-specific
# execution line and uncomment other sets of rules as needed.

# Initiate some paths
PT=`pwd`
SP="$PT/../suite"
TSR="$PT/../test-specific-rulesets"
PR="$PT/../results"
RULES="$PT/../../../../rules"

# With test-specific entailment file
$INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $TSR/$1.rq -r $SP/$1.rq -i $SP/$2.ttl

# With rdf:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/rdf-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With rdf+rdfs:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/rdf-rules.rq -r $RULES/rdfs-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With D*:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/Dstar-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With D*+P:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/Dstar-rules.rq -r $RULES/rdfp-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With P:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/rdfp-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With rhodf:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/rhodf-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With owl2rl:
# $INSTANS_HOME/bin/instans --prefix-encoding=true --print-prefix-encodings=false -r $RULES/list-handler.rq -r $RULES/owl2rl-rules.rq -r $SP/$1.rq -i $SP/$2.ttl

# With owl-rules-test:
# $INSTANS_HOME/bin/instans --rdf-operations=add:execute:flush --prefix-encoding=true --print-prefix-encodings=false -r $RULES/owl-rules-test.rq -r $SP/$1.rq -i $SP/$2.ttl
