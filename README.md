<!-- badges: start -->
[![R-CMD-check-bioc](https://github.com/adeschen/SignatureHeatmap/actions/workflows/check-bioc.yaml/badge.svg)](https://github.com/adeschen/SignatureHeatmap/actions/workflows/check-bioc.yaml)
[![codecov](https://codecov.io/gh/adeschen/SignatureHeatmap/branch/main/graph/badge.svg?token=XVKU8S1E2R)](https://codecov.io/gh/adeschen/SignatureHeatmap)
[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)
<!-- badges: end -->

# SignatureHeatmap

The __SignatureHeatmap__ package enables signature classification of tumor 
samples by generating heatmaps using transcriptomic data. 

At the moment, three different lists of signature genes are 
available in the __SignatureHeatmap__ package: 

* the original list of basal/classical genes from Moffitt et al. 2015 for 
pancreatic ductal adenocarcinoma (PDAC) tissue samples
* the updated list of basal/classical genes for PDAC tissue samples 
from Miyabayashi et al. 2020
* the list of basal/classical genes from Tiriac et al. 2018 that has been 
developed for PDAC organoids


## Authors ##

[Astrid Desch&ecirc;nes](http://ca.linkedin.com/in/astriddeschenes "Astrid Desch&ecirc;nes"),
Daniel King and
David A. Tuveson


## Citation ##

If you use this package for a publication, we would ask you 
to cite the following:

> Deschênes A, King D and Tuveson DA. SignatureHeatmap: Heatmap using signature gene list and RNA-seq expression data. R package version 0.0.3, https://adeschen.github.io/SignatureHeatmap/ 
  
You can also replace the latest by the Research Resource Identifier __(RRID)__, as 
example:

>   SignatureHeatmap version 0.0.3, RRID: SCR_022949

If you use one of the available signature gene list, the appropriate
paper should be referenced.

For Moffitt et al. 2015

> Moffitt RA, Marayati R, Flate EL et al. Virtual microdissection identifies distinct tumor- and stroma-specific subtypes of pancreatic ductal adenocarcinoma. Nat Genet. 2015 Oct;47(10):1168-78. doi: 10.1038/ng.3398. Epub 2015 Sep 7. PMID: 26343385; PMCID: PMC4912058.

For Tiriac et al. 2018

> Tiriac H, Belleau P, Engle DD et al. Organoid Profiling Identifies Common Responders to Chemotherapy in Pancreatic Cancer. Cancer Discov. 2018 Sep;8(9):1112-1129. doi: 10.1158/2159-8290.CD-18-0349. Epub 2018 May 31. PMID: 29853643; PMCID: PMC6125219.

For Miyabayashi et al. 2020

> Miyabayashi K, Baker LA, Deschênes A et al. Intraductal Transplantation Models of Human Pancreatic Ductal Adenocarcinoma Reveal Progressive Transition of Molecular Subtypes. Cancer Discov. 2020 Oct;10(10):1566-1589. doi: 10.1158/2159-8290.CD-20-0133. Epub 2020 Jul 23. PMID: 32703770; PMCID: PMC7664990.


## Documentation ##

[SignatureHeatmap Website](https://adeschen.github.io/SignatureHeatmap/)

[SignatureHeatmap Get Started](https://adeschen.github.io/SignatureHeatmap/articles/SignatureHeatmap.html)

## Installation ##

To install the latest version accessible using the [devtools](https://cran.r-project.org/web/packages/devtools/index.html) 
package:

     ## Load required package
     library(devtools)

     ## Install the latest version of SignatureHeatmap
     devtools::install_github('adeschen/SignatureHeatmap')



## Maintainer

[Astrid Desch&ecirc;nes](https://github.com/adeschen/ "Astrid Desch&ecirc;nes")


## Bugs/Feature requests ##

[Please contact us](https://github.com/adeschen/SignatureHeatmap/issues) for bug fixes or with feature requests. 

Thanks!

