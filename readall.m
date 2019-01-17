fileID = fopen('dati/BM25_NO-SL+STEM_map','r');
m_bny = fscanf(fileID,'%f');

fileID = fopen('dati/BM25_SL+STEM_map','r');
m_byy = fscanf(fileID,'%f');

fileID = fopen('dati/TF*IDF_NO-SL+NO-STEM_map','r');
m_tnn = fscanf(fileID,'%f');

fileID = fopen('dati/TF*IDF_SL+STEM_map','r');
m_tyy = fscanf(fileID,'%f');

%%%%%%%%

fileID = fopen('dati/BM25_NO-SL+STEM_Rprec','r');
r_bny = fscanf(fileID,'%f');

fileID = fopen('dati/BM25_SL+STEM_Rprec','r');
r_byy = fscanf(fileID,'%f');

fileID = fopen('dati/TF*IDF_NO-SL+NO-STEM_Rprec','r');
r_tnn = fscanf(fileID,'%f');

fileID = fopen('dati/TF*IDF_SL+STEM_Rprec','r');
r_tyy = fscanf(fileID,'%f');

%%%%%%%%%%%%
fileID = fopen('dati/BM25_NO-SL+STEM_P_10','r');
p_bny = fscanf(fileID,'%f');

fileID = fopen('dati/BM25_SL+STEM_P_10','r');
p_byy = fscanf(fileID,'%f');

fileID = fopen('dati/TF*IDF_NO-SL+NO-STEM_P_10','r');
p_tnn = fscanf(fileID,'%f');

fileID = fopen('dati/TF*IDF_SL+STEM_P_10','r');
p_tyy = fscanf(fileID,'%f');
