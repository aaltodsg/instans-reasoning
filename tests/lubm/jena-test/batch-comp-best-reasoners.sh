# Compare output of all the different reasoners available on Jena to with the LUBM reference answers

./comp-no-reasoning.sh q1 Uni1 answers_query1
./comp-no-reasoning.sh q2 Uni1 answers_query2
./comp-no-reasoning.sh q3 Uni1 answers_query3
./comp-with-reasoning.sh q4 Uni1 answers_query4 RDFSSimple
./comp-with-reasoning.sh q5 Uni1 answers_query5 RDFSSimple
./comp-with-reasoning.sh q11 Uni1 answers_query11 OWLMicro
./comp-with-reasoning.sh q13 Uni1 answers_query13 OWLMicro
./comp-no-reasoning.sh q14 Uni1 answers_query14
