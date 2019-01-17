#!/bin/bash

cd ~/Scrivania/HW1/terrier-core-4.4

# RETRIEVAL
# SL+STEM BM25
rm var/index
rm var/results
ln var/index_SL+STEM var/index -r -s
./bin/trec_terrier.sh -r -Dtrec.model=BM25 -Dignore.low.idf.terms=false -Dtermpipelines=Stopwords,PorterStemmer -DTrecQueryTags.process=TOP,NUM,TITLE -DTrecQueryTags.skip=NARR,DESC -Dtrec.topics=/home/alessio/Scrivania/HW1/collection/topics.351-400_trec7
mv var/results var/results_BM25_SL+STEM

#NO-SL+STEM BM25
rm var/index
rm var/results
ln var/index_NO-SL+STEM var/index -r -s
./bin/trec_terrier.sh -r -Dtrec.model=BM25 -Dignore.low.idf.terms=false -Dtermpipelines=PorterStemmer -DTrecQueryTags.process=TOP,NUM,TITLE -DTrecQueryTags.skip=NARR,DESC -Dtrec.topics=/home/alessio/Scrivania/HW1/collection/topics.351-400_trec7
mv var/results var/results_BM25_NO-SL+STEM

#SL+STEM TF_IDF
rm var/index
rm var/results
ln var/index_SL+STEM var/index -r -s
./bin/trec_terrier.sh -r -Dtrec.model=TF_IDF -Dignore.low.idf.terms=false -Dtermpipelines=Stopwords,PorterStemmer -DTrecQueryTags.process=TOP,NUM,TITLE -DTrecQueryTags.skip=NARR,DESC -Dtrec.topics=/home/alessio/Scrivania/HW1/collection/topics.351-400_trec7
mv var/results var/results_TF_IDF_SL+STEM

#NO-SL+NO-STEM TF_IDF
rm var/index
rm var/results
ln var/index_NO-SL+NO_STEM var/index -r -s
./bin/trec_terrier.sh -r -Dtrec.model=TF_IDF -Dignore.low.idf.terms=false -Dtermpipelines= -DTrecQueryTags.process=TOP,NUM,TITLE -DTrecQueryTags.skip=NARR,DESC -Dtrec.topics=/home/alessio/Scrivania/HW1/collection/topics.351-400_trec7
mv var/results var/results_TF_IDF_NO-SL+NO-STEM

rm var/index
rm var/results

#EVALUATION
rm var/results
ln var/results_BM25_SL+STEM var/results -r -s
./bin/trec_terrier.sh -e -p -Dtrec.qrels=/home/alessio/Scrivania/HW1/collection/qrels.trec7.txt

rm var/results
ln var/results_BM25_NO-SL+STEM var/results -r -s
./bin/trec_terrier.sh -e -p -Dtrec.qrels=/home/alessio/Scrivania/HW1/collection/qrels.trec7.txt

rm var/results
ln var/results_TF_IDF_SL+STEM var/results -r -s
./bin/trec_terrier.sh -e -p -Dtrec.qrels=/home/alessio/Scrivania/HW1/collection/qrels.trec7.txt

rm var/results
ln var/results_TF_IDF_NO-SL+NO-STEM var/results -r -s
./bin/trec_terrier.sh -e -p -Dtrec.qrels=/home/alessio/Scrivania/HW1/collection/qrels.trec7.txt

rm var/results

