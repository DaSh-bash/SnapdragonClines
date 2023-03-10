### Flower color genes analysis

ssh daria@rackham.uppmax.uu.se
cd /proj/uppstore2017185/b2014034/nobackup/

#Downloading the data
mkdir WGS
wget https://www.dropbox.com/s/m7ckigkbxb6uypk/GWHBJVT00000000.Protein.faa?dl=0
wget https://www.dropbox.com/s/lpklohyvprw2l1s/GWHBJVT00000000.gff?dl=0

#Search terms
venosa AND (taxonomy_id:4150)
CHS AND (taxonomy_id:4150)
ros2 AND (taxonomy_id:4150)

#We would like to remove all SNPs falling into exons, which requires annotation lift-over.
#We perform lift-over of our version of the annotation using BLAST:

makeblastdb -in GWHBJVT00000000.Protein.faa -dbtype prot -parse_seqids -out GWHBJVT00000000.Protein1.faa -title "GWHBJVT00000000.Protein1.faa"

blastp -db GWHBJVT00000000.Protein1.faa -query flower_genes.fasta -out Chrom_scaffolds2.tab -outfmt 6 -num_threads 4

Amajus_ROSEA1_AS1       GWHPBJVT035576  100.000 220     0       0       1       220     1       220     5.41e-165       453
Amajus_NIVEA_CHS        GWHPBJVT025160  100.000 390     0       0       1       390     1       390     0.0     809
Amajus_MYBML3_MYB306    GWHPBJVT035369  100.000 219     0       0       1       219     1       219     1.49e-166       457
Amajus_FLAVONOL_SYNTASE GWHPBJVT025961  100.000 335     0       0       1       335     1       335     0.0     688
Amajus_DEL_AS1  GWHPBJVT014026  100.000 644     0       0       1       644     21      664     0.0     1337
Amajus_DEL_MYB308       GWHPBJVT030687  99.565  230     1       0       1       230     1       230     9.40e-173       475
Amajus_MYB330_DFRA      GWHPBJVT034872  99.552  446     2       0       1       446     1       446     0.0     920
Amajus_MYB340_DFRA      GWHPBJVT035513  99.495  198     0       1       1       198     1       197     6.53e-148       408
Amajus_ROS2_AmCHI1      GWHPBJVT009769  99.095  221     2       0       1       221     1       221     1.23e-161       445
Amajus_MIXTA_MYB306     GWHPBJVT034491  99.054  317     2       1       1       316     1       317     0.0     646
Amajus_CHS_MYB330       GWHPBJVT026134  98.905  274     3       0       1       274     1       274     0.0     562
Amajus_PAL_AS1  GWHPBJVT034872  98.851  87      1       0       1       87      45      131     4.71e-57        181
Amajus_MYB315   GWHPBJVT043775  98.544  206     2       1       1       205     1       206     1.45e-153       423
Amajus_MYB305_ROS2      GWHPBJVT043775  98.544  206     2       1       1       205     1       206     1.45e-153       423
Amajus_CHI_MYB305       GWHPBJVT043775  98.544  206     2       1       1       205     1       206     1.45e-153       423
Amajus_ELUTA_Chalcone4-O-glucosyltransferase    GWHPBJVT011804  98.031  457     9       0       1       457     1       457     0.0     926
Amajus_VENOSA_F3_5_H    GWHPBJVT042729  96.429  28      1       0       1       28      1       28      1.30e-11        59.7
Amajus_DEL_MYB308       GWHPBJVT026134  93.077  130     9       0       1       130     1       130     3.78e-88        261
Amajus_NIVEA_CHS        GWHPBJVT005072  92.602  392     27      2       1       390     1       392     0.0     753
Amajus_F3-5-H_MYBML2    GWHPBJVT043941  90.085  353     34      1       1       352     1       353     0.0     639
Amajus_F3-5-H_MYBML2    GWHPBJVT026766  89.773  88      9       0       1       88      1       88      1.75e-55        176
Amajus_ROSEA1_AS1       GWHPBJVT035577  86.905  84      11      0       1       84      1       84      1.45e-47        154
Amajus_F3-5-H_MYBML2    GWHPBJVT027868  85.714  77      11      0       12      88      9       85      3.66e-44        147
Amajus_MYBML3_MYB306    GWHPBJVT026766  85.227  88      13      0       1       88      1       88      4.20e-52        163
Amajus_VENOSA_F3_5_H    GWHPBJVT042729  85.075  134     16      1       61      194     8       137     1.01e-76        226
Amajus_VENOSA_F3_5_H    GWHPBJVT035577  83.333  84      14      0       1       84      1       84      5.25e-48        154
Amajus_MYBML3_MYB306    GWHPBJVT027868  83.117  77      13      0       12      88      9       85      5.38e-44        142
Amajus_F3-5-H_MYBML2    GWHPBJVT035369  82.386  176     28      1       1       173     1       176     5.94e-104       305
Amajus_MYB315   GWHPBJVT007483  81.356  59      11      0       9       67      39      97      5.09e-30        110
Amajus_MYB305_ROS2      GWHPBJVT007483  81.356  59      11      0       9       67      39      97      5.09e-30        110
Amajus_CHI_MYB305       GWHPBJVT007483  81.356  59      11      0       9       67      39      97      5.09e-30        110
Amajus_MYB315   GWHPBJVT024560  79.279  111     23      0       9       119     22      132     3.00e-56        181
Amajus_MYB305_ROS2      GWHPBJVT024560  79.279  111     23      0       9       119     22      132     3.00e-56        181
Amajus_CHI_MYB305       GWHPBJVT024560  79.279  111     23      0       9       119     22      132     3.00e-56        181
Amajus_MYB340_DFRA      GWHPBJVT024560  79.091  110     22      1       11      120     24      132     2.18e-55        178
Amajus_ELUTA_Chalcone4-O-glucosyltransferase    GWHPBJVT022880  77.778  153     34      0       130     282     1       153     8.10e-82        249
Amajus_DEL_MYB308       GWHPBJVT005202  77.551  147     33      0       1       147     1       147     1.19e-82        246
Amajus_F3-5-H_MYBML2    GWHPBJVT008207  77.444  133     30      0       1       133     1       133     2.79e-77        241
Amajus_DEL_MYB308       GWHPBJVT019397  77.155  232     31      4       1       230     1       212     3.04e-122       347
Amajus_MYB315   GWHPBJVT017271  77.064  109     25      0       11      119     282     390     3.98e-58        191
Amajus_MYB305_ROS2      GWHPBJVT017271  77.064  109     25      0       11      119     282     390     3.98e-58        191
Amajus_CHI_MYB305       GWHPBJVT017271  77.064  109     25      0       11      119     282     390     3.98e-58        191
Amajus_MYBML3_MYB306    GWHPBJVT022662  76.336  131     31      0       1       131     1       131     9.02e-75        229
Amajus_MYB340_DFRA      GWHPBJVT007483  76.271  59      14      0       9       67      39      97      4.71e-29        107
Amajus_MYBML3_MYB306    GWHPBJVT036665  75.969  129     31      0       1       129     1       129     3.91e-71        220
Amajus_F3-5-H_MYBML2    GWHPBJVT036659  75.969  129     31      0       1       129     1       129     9.52e-73        229
Amajus_MYB315   GWHPBJVT000587  75.862  116     28      0       4       119     14      129     1.07e-57        183
Amajus_MYB305_ROS2      GWHPBJVT000587  75.862  116     28      0       4       119     14      129     1.07e-57        183
Amajus_CHI_MYB305       GWHPBJVT000587  75.862  116     28      0       4       119     14      129     1.07e-57        183
Amajus_MYBML3_MYB306    GWHPBJVT027858  75.581  172     38      1       1       172     1       168     1.14e-93        278
Amajus_MYBML3_MYB306    GWHPBJVT008207  75.573  131     32      0       1       131     1       131     3.62e-73        225
Amajus_MYBML3_MYB306    GWHPBJVT025018  75.472  106     26      0       11      116     2       107     2.79e-56        179
Amajus_F3-5-H_MYBML2    GWHPBJVT036665  75.194  129     32      0       1       129     1       129     8.52e-73        229
Amajus_MYBML3_MYB306    GWHPBJVT036664  74.809  131     33      0       1       131     1       131     1.39e-69        216
