# IR-Homework 1 (2018-2019)
Autore: Alessio Mazzetto

## Introduzione

I risultati del primo Homework di Information Retrieval (2018-2019) sono riportati all'interno della repository. Sono stati testati e valutati diversi modelli di reperimento dell'informazione. Per maggiori dettagli sulla sperimentazione si rimanda al report in '/homework1.pdf'. I risultati degli esperimenti sono disponibili nella cartella '/terrier-core-4.4/results'. In quella cartella, si possono trovare anche i file in formato ".settings" che descrivono le impostazioni usate per gli esperimenti. I grafici sono disponibili nella cartella '/terrier-core-4.4/graphs'.

## Dettagli sulla sperimentazione 

Gli script sono basati sul filesystem dell'autore, per essere riutilizzati devono essere cambiati i percorsi assoluti al loro interno.

Per le sperimentazioni è stato utilizzato il software Terrier v4.4. Il file di configurazione utilizzato come base è '/terrier-core-4.4/etc/terrier.properties'. I parametri su cui differivano le run di indicizzazione, reperimento e valutazione sono stati forniti in linea di comando da terminale (è stato utilizzato lo script trec_terrier.sh di Terrier per le run). Per il funzionamento di Terrier, si rimanda alla sua documentazione.

* L'indice con Stoplist e Porter Stemmer è stato ottenuto usando -Dtermpipelines=Stopwords,PorterStemmer 
* L'indice senza l'utilizzo di Stoplist e Stemmer è stato costruito ponendo vuoto -Dtermpipelines
* L'indice senza Stoplist e con il Porter Stemmer è stato ottenuto usando -Dtermpipelines=PorterStemmer

Per il reperimento e la valutazione sono stati utilizzati gli script (di comodità) '/terrier-core-4.4/all_exec_disc.sh' e '/terrier-core-4.4/all_exec_disc.sh'

I risultati del reperimento e della valutazione sono disponibili all'interno delle cartella '/terrier-core-4.4/results'. I parametri di Terrier utilizzati per il reperimento sono disponibili per ogni run nel file con il formato ".res.settings".

I dati utilizzati per tracciare i grafici e compiere il test 1way-ANOVA post-hoc Tukey HSD sono stati parsati dai file .eval all'interno di '/terrier-core-4.4/results' utilizzando lo script '/parse_data.sh', che utilizza la classe Java '/Read.java'. I dati parsati sono contenuti nella cartella '/terrier-core.4.4/parsed_results'.

Lo script '/ir_anova.m' è stato utilizzato per il tracciamento dei grafici e per i test statistici. Gli script '/all_graphs.m' e 'readall.m' sono utilizzati per automatizzare il processo di caricamento dei dati nell'ambiente Matlab ed esecuzione dello script '/ir_anova.m'.

I grafici in formato .pdf si possono trovare all'interno della cartella '/terrier-core-4.4/graphs'.

##

* [Terrier](http://www.terrier.org)

## Acknowledgments
* Script 'ir_anova.m': Autore Prof. Nicola Ferro (maggiori dettagli all'interno dello script). 
