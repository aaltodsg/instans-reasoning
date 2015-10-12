# Tests compliant with documented entailment regimes

./comp-instans.sh rdfs01 rdfs01
./comp-instans.sh rdfs02 rdfs01
./comp-instans.sh rdfs03 rdfs03
./comp-instans.sh rdfs04 rdfs04
./comp-instans.sh rdfs05 rdfs05
./comp-instans.sh rdfs06 rdfs06
./comp-instans.sh rdfs07 rdfs07
./comp-instans.sh rdfs09 rdfs09
./comp-instans.sh rdfs11 rdfs11

./comp-instans.sh paper-sparqldl-Q1 paper-sparqldl-data
./comp-instans.sh paper-sparqldl-Q1-rdfs paper-sparqldl-data
./comp-instans.sh paper-sparqldl-Q4 paper-sparqldl-data

./comp-instans.sh sparqldl-02 data-01
./comp-instans.sh sparqldl-03 data-02
./comp-instans.sh sparqldl-10 data-07

./comp-instans.sh parent3 parent

# Tests requiring custom rules

./comp-instans.sh paper-sparqldl-Q2 paper-sparqldl-data
./comp-instans.sh paper-sparqldl-Q3 paper-sparqldl-data

./comp-instans.sh sparqldl-12 data-11
./comp-instans.sh sparqldl-13 data-08

./comp-instans.sh parent5 parent
./comp-instans.sh parent9 parent
./comp-instans.sh parent10 parent

./comp-instans.sh simple1 simple
./comp-instans.sh simple2 simple
./comp-instans.sh simple3 simple
./comp-instans.sh simple4 simple
./comp-instans.sh simple5 simple
./comp-instans.sh simple6 simple
./comp-instans.sh simple7 simple
./comp-instans.sh simple8 simple
