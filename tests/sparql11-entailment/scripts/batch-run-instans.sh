# Tests compliant with documented entailment regimes

./run-instans.sh rdfs01 rdfs01
./run-instans.sh rdfs02 rdfs01
./run-instans.sh rdfs03 rdfs03
./run-instans.sh rdfs04 rdfs04
./run-instans.sh rdfs05 rdfs05
./run-instans.sh rdfs06 rdfs06
./run-instans.sh rdfs07 rdfs07
./run-instans.sh rdfs09 rdfs09
./run-instans.sh rdfs11 rdfs11

./run-instans.sh paper-sparqldl-Q1 paper-sparqldl-data
./run-instans.sh paper-sparqldl-Q1-rdfs paper-sparqldl-data
./run-instans.sh paper-sparqldl-Q4 paper-sparqldl-data

./run-instans.sh sparqldl-02 data-01
./run-instans.sh sparqldl-03 data-02
./run-instans.sh sparqldl-10 data-07

./run-instans.sh parent3 parent

# Tests requiring custom rules

./run-instans.sh paper-sparqldl-Q2 paper-sparqldl-data
./run-instans.sh paper-sparqldl-Q3 paper-sparqldl-data

./run-instans.sh sparqldl-12 data-11
./run-instans.sh sparqldl-13 data-08

./run-instans.sh parent5 parent
./run-instans.sh parent9 parent
./run-instans.sh parent10 parent

./run-instans.sh simple1 simple
./run-instans.sh simple2 simple
./run-instans.sh simple3 simple
./run-instans.sh simple4 simple
./run-instans.sh simple5 simple
./run-instans.sh simple6 simple
./run-instans.sh simple7 simple
./run-instans.sh simple8 simple
