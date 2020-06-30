# MiRSEA
'MicroRNA' Set Enrichment Analysis

> The tools for 'MicroRNA Set Enrichment Analysis' can identify risk pathways(or prior gene sets) regulated by microRNA set in the context of microRNA expression data. (1) This package constructs a correlation profile of microRNA and pathways by the hypergeometric statistic test. The gene sets of pathways derived from the three public databases (Kyoto Encyclopedia of Genes and Genomes ('KEGG'); 'Reactome'; 'Biocarta') and the target gene sets of microRNA are provided by four databases('TarBaseV6.0'; 'mir2Disease'; 'miRecords'; 'miRTarBase';). (2) This package can quantify the change of correlation between microRNA for each pathway(or prior gene set) based on a microRNA expression data with cases and controls. (3) This package uses the weighted Kolmogorov-Smirnov statistic to calculate an enrichment score (ES) of a microRNA set that co-regulate to a pathway , which reflects the degree to which a given pathway is associated with the specific phenotype. (4) This package can provide the visualization of the results.

### how to install

```R
Installation method：

1. library(devtools); 
   install_github("hanjunwei-lab/MiRSEA")
2. install.packages("MiRSEA")

Use：
library(MiRSEA)
```

Please cite the following article when using `MiRSEA`:

Han, J., S. Liu, Y. Zhang, Y. Xu, Y. Jiang, C. Zhang, C. Li, and X. Li, MiRSEA: Discovering the pathways regulated by dysfunctional MicroRNAs. Oncotarget, 2016. 7(34): p. 55012-55025.