# Compare output of all the different reasoners available on Jena to with the LUBM reference answers

./comp-no-reasoning.sh q1 Uni1 answers_query1
./comp-no-reasoning.sh q2 Uni1 answers_query2
./comp-no-reasoning.sh q3 Uni1 answers_query3
./comp-no-reasoning.sh q14 Uni1 answers_query14

Echo "Testing:Transitive"
./comp-with-reasoning.sh q4 Uni1 answers_query4 Transitive
./comp-with-reasoning.sh q5 Uni1 answers_query5 Transitive
./comp-with-reasoning.sh q6 Uni1 answers_query6 Transitive
./comp-with-reasoning.sh q7 Uni1 answers_query7 Transitive
./comp-with-reasoning.sh q8 Uni1 answers_query8 Transitive
./comp-with-reasoning.sh q9 Uni1 answers_query9 Transitive
./comp-with-reasoning.sh q10 Uni1 answers_query10 Transitive
./comp-with-reasoning.sh q11 Uni1 answers_query11 Transitive
./comp-with-reasoning.sh q12 Uni1 answers_query12 Transitive
./comp-with-reasoning.sh q13 Uni1 answers_query13 Transitive

Echo "Testing:RDFSSimple"
./comp-with-reasoning.sh q4 Uni1 answers_query4 RDFSSimple
./comp-with-reasoning.sh q5 Uni1 answers_query5 RDFSSimple
./comp-with-reasoning.sh q6 Uni1 answers_query6 RDFSSimple
./comp-with-reasoning.sh q7 Uni1 answers_query7 RDFSSimple
./comp-with-reasoning.sh q8 Uni1 answers_query8 RDFSSimple
./comp-with-reasoning.sh q9 Uni1 answers_query9 RDFSSimple
./comp-with-reasoning.sh q10 Uni1 answers_query10 RDFSSimple
./comp-with-reasoning.sh q11 Uni1 answers_query11 RDFSSimple
./comp-with-reasoning.sh q12 Uni1 answers_query12 RDFSSimple
./comp-with-reasoning.sh q13 Uni1 answers_query13 RDFSSimple

Echo "Testing:RDFS"
./comp-with-reasoning.sh q4 Uni1 answers_query4 RDFS
./comp-with-reasoning.sh q5 Uni1 answers_query5 RDFS
./comp-with-reasoning.sh q6 Uni1 answers_query6 RDFS
./comp-with-reasoning.sh q7 Uni1 answers_query7 RDFS
./comp-with-reasoning.sh q8 Uni1 answers_query8 RDFS
./comp-with-reasoning.sh q9 Uni1 answers_query9 RDFS
./comp-with-reasoning.sh q10 Uni1 answers_query10 RDFS
./comp-with-reasoning.sh q11 Uni1 answers_query11 RDFS
./comp-with-reasoning.sh q12 Uni1 answers_query12 RDFS
./comp-with-reasoning.sh q13 Uni1 answers_query13 RDFS

Echo "Testing:OWLMicro"
./comp-with-reasoning.sh q4 Uni1 answers_query4 OWLMicro
./comp-with-reasoning.sh q5 Uni1 answers_query5 OWLMicro
./comp-with-reasoning.sh q6 Uni1 answers_query6 OWLMicro
./comp-with-reasoning.sh q7 Uni1 answers_query7 OWLMicro
./comp-with-reasoning.sh q8 Uni1 answers_query8 OWLMicro
./comp-with-reasoning.sh q9 Uni1 answers_query9 OWLMicro
./comp-with-reasoning.sh q10 Uni1 answers_query10 OWLMicro
./comp-with-reasoning.sh q11 Uni1 answers_query11 OWLMicro
./comp-with-reasoning.sh q12 Uni1 answers_query12 OWLMicro
./comp-with-reasoning.sh q13 Uni1 answers_query13 OWLMicro

Echo "Testing:OWLMini"
./comp-with-reasoning.sh q4 Uni1 answers_query4 OWLMini
./comp-with-reasoning.sh q5 Uni1 answers_query5 OWLMini
./comp-with-reasoning.sh q6 Uni1 answers_query6 OWLMini
./comp-with-reasoning.sh q7 Uni1 answers_query7 OWLMini
./comp-with-reasoning.sh q8 Uni1 answers_query8 OWLMini
./comp-with-reasoning.sh q9 Uni1 answers_query9 OWLMini
./comp-with-reasoning.sh q10 Uni1 answers_query10 OWLMini
./comp-with-reasoning.sh q11 Uni1 answers_query11 OWLMini
./comp-with-reasoning.sh q12 Uni1 answers_query12 OWLMini
./comp-with-reasoning.sh q13 Uni1 answers_query13 OWLMini

Echo "Testing:OWL"
./comp-with-reasoning.sh q4 Uni1 answers_query4 OWL
./comp-with-reasoning.sh q5 Uni1 answers_query5 OWL
./comp-with-reasoning.sh q6 Uni1 answers_query6 OWL
# Q7 currently not finishing - commented out.
# ./comp-with-reasoning.sh q7 Uni1 answers_query7 OWL
./comp-with-reasoning.sh q8 Uni1 answers_query8 OWL
./comp-with-reasoning.sh q9 Uni1 answers_query9 OWL
./comp-with-reasoning.sh q10 Uni1 answers_query10 OWL
./comp-with-reasoning.sh q11 Uni1 answers_query11 OWL
./comp-with-reasoning.sh q12 Uni1 answers_query12 OWL
./comp-with-reasoning.sh q13 Uni1 answers_query13 OWL
