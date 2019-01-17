#!/bin/bash


##
cd ~/Scrivania/HW1/
mkdir dati
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_BM25_NO-SL+STEM/BM25b0.75_0.eval map dati/BM25_NO-SL+STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_BM25_SL+STEM/BM25b0.75_0.eval map dati/BM25_SL+STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_TF*IDF_NO-SL+NO-STEM/TF_IDF_0.eval map dati/TF*IDF_NO-SL+NO-STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_TF*IDF_SL+STEM/TF_IDF_0.eval map dati/TF*IDF_SL+STEM

##
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_BM25_NO-SL+STEM/BM25b0.75_0.eval Rprec dati/BM25_NO-SL+STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_BM25_SL+STEM/BM25b0.75_0.eval Rprec dati/BM25_SL+STEM 
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_TF*IDF_NO-SL+NO-STEM/TF_IDF_0.eval Rprec dati/TF*IDF_NO-SL+NO-STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_TF*IDF_SL+STEM/TF_IDF_0.eval Rprec dati/TF*IDF_SL+STEM


##
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_BM25_NO-SL+STEM/BM25b0.75_0.eval P_10 dati/BM25_NO-SL+STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_BM25_SL+STEM/BM25b0.75_0.eval P_10 dati/BM25_SL+STEM 
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_TF*IDF_NO-SL+NO-STEM/TF_IDF_0.eval P_10 dati/TF*IDF_NO-SL+NO-STEM
java Read ~/Scrivania/HW1/terrier-core-4.4/var/results_TF*IDF_SL+STEM/TF_IDF_0.eval P_10 dati/TF*IDF_SL+STEM  
