#' BasalClassicalHeatmap: TODO
#'
#' To learn more about \pkg{BasalClassicalHeatmap} package see:
#' \url{https://github.com/adeschen/BasalClassicalHeatmap/wiki}
#'
#' @docType package
#'
#' @name BasalClassicalHeatmap-package
#'
#' @aliases BasalClassicalHeatmap-package BasalClassicalHeatmap
#'
#' @author
#'
#' Maintainer:
#' Astrid Deschênes <adeschen@@hotmail.com>
#'
#' @seealso
#' \itemize{
#' \item \code{\link{createHeatmap}} {for creating a heating using a 
#' gene list and RNA-seq expression data.}
#' }
#' @encoding UTF-8
#' @keywords package
NULL


#' The Basal-like and Classical gene list used in Tiriac et al 2018.
#'
#' @name Tiriac_2018
#'
#' @docType data
#'
#' @aliases Tiriac_2018
#'
#' @format a \code{data.frame} with the following columns:
#' \itemize{
#' \item \code{SYMBOL} { a \code{character} string representing the
#' symbol of the gene. }
#' \item \code{Class} { a \code{character} string representing the class 
#' (Basal-like or Classical) associated to the gene. }
#' }
#'
#' @seealso
#' \itemize{
#' \item \code{\link{createHeatmap}} { for creating a heating using a 
#' gene list and RNA-seq expression data.}
#' }
#'
#' @usage data(Tiriac_2018)
#'
#' @keywords datasets
#'
#' @references 
#' 
#' Tiriac H, Belleau P, Engle DD, Plenker D, Deschênes A, Somerville TDD, 
#' Froeling FEM, Burkhart RA, Denroche RE, Jang GH, Miyabayashi K, Young CM, 
#' Patel H, Ma M, LaComb JF, Palmaira RLD, Javed AA, Huynh JC, Johnson M, 
#' Arora K, Robine N, Shah M, Sanghvi R, Goetz AB, Lowder CY, Martello L, 
#' Driehuis E, LeComte N, Askan G, Iacobuzio-Donahue CA, Clevers H, Wood LD, 
#' Hruban RH, Thompson E, Aguirre AJ, Wolpin BM, Sasson A, Kim J, Wu M, 
#' Bucobo JC, Allen P, Sejpal DV, Nealon W, Sullivan JD, Winter JM, 
#' Gimotty PA, Grem JL, DiMaio DJ, Buscaglia JM, Grandgenett PM, Brody JR, 
#' Hollingsworth MA, O'Kane GM, Notta F, Kim E, Crawford JM, Devoe C, Ocean A, 
#' Wolfgang CL, Yu KH, Li E, Vakoc CR, Hubert B, Fischer SE, Wilson JM, 
#' Moffitt R, Knox J, Krasnitz A, Gallinger S, Tuveson DA. 
#' Organoid Profiling Identifies Common Responders to Chemotherapy in 
#' Pancreatic Cancer. Cancer Discov. 2018 Sep;8(9):1112-1129. 
#' doi: 10.1158/2159-8290.CD-18-0349. 
#' Epub 2018 May 31. PMID: 29853643; PMCID: PMC6125219.
#' 
#' @examples
#'
#' ## Load Tiriac et al 2018 gene list used for 
#' ## Basal-like/Classical classification
#' data(Tiriac_2018)
#'
#' ## The dataset contains 2 columns
#' ## The first column has the gene symbols
#' ## The second column the class assignation (Basal-like or Classical)
#' head(Tiriac_2018)
#'
#'
NULL


#' The Basal-like and Classical gene list used in Moffitt et al 2015.
#'
#' @name Moffitt_2015
#'
#' @docType data
#'
#' @aliases Moffitt_2015
#'
#' @format a \code{data.frame} with the following columns:
#' \itemize{
#' \item \code{SYMBOL} { a \code{character} string representing the
#' symbol of the gene. }
#' \item \code{Class} { a \code{character} string representing the class 
#' (Basal-like or Classical) associated to the gene. }
#' }
#'
#' @seealso
#' \itemize{
#' \item \code{\link{createHeatmap}} { for creating a heating using a 
#' gene list and RNA-seq expression data.}
#' }
#'
#' @usage data(Moffitt_2015)
#'
#' @keywords datasets
#'
#' @references 
#' 
#' Moffitt RA, Marayati R, Flate EL, Volmar KE, Loeza SG, Hoadley KA, 
#' Rashid NU, Williams LA, Eaton SC, Chung AH, Smyla JK, Anderson JM, 
#' Kim HJ, Bentrem DJ, Talamonti MS, Iacobuzio-Donahue CA, Hollingsworth MA, 
#' Yeh JJ. Virtual microdissection identifies distinct tumor- and 
#' stroma-specific subtypes of pancreatic ductal adenocarcinoma. 
#' Nat Genet. 2015 Oct;47(10):1168-78. 
#' doi: 10.1038/ng.3398. Epub 2015 Sep 7. PMID: 26343385; PMCID: PMC4912058.
#' 
#' @examples
#'
#' ## Load Moffitt et al 2015 gene list used for 
#' ## Basal-like/Classical classification
#' data(Moffitt_2015)
#'
#' ## The dataset contains 2 columns
#' ## The first column has the gene symbols
#' ## The second column the class assignation (Basal-like or Classical)
#' head(Moffitt_2015)
#'
NULL


#' The Basal-like and Classical gene list used in Miyabayashi et al 2020.
#'
#' @name Miyabayashi_2020
#'
#' @docType data
#'
#' @aliases Miyabayashi_2020
#'
#' @format a \code{data.frame} with the following columns:
#' \itemize{
#' \item \code{SYMBOL} { a \code{character} string representing the
#' symbol of the gene. }
#' \item \code{Class} { a \code{character} string representing the class 
#' (Basal-like or Classical) associated to the gene. }
#' }
#'
#' @seealso
#' \itemize{
#' \item \code{\link{createHeatmap}} { for creating a heating using a 
#' gene list and RNA-seq expression data.}
#' }
#'
#' @usage data(Miyabayashi_2020)
#'
#' @keywords datasets
#'
#' @references 
#' 
#' Miyabayashi K, Baker LA, Deschênes A, Traub B, Caligiuri G, Plenker D, 
#' Alagesan B, Belleau P, Li S, Kendall J, Jang GH, Kawaguchi RK, 
#' Somerville TDD, Tiriac H, Hwang CI, Burkhart RA, Roberts NJ, Wood LD, 
#' Hruban RH, Gillis J, Krasnitz A, Vakoc CR, Wigler M, Notta F, 
#' Gallinger S, Park Y, Tuveson DA. Intraductal Transplantation Models of 
#' Human Pancreatic Ductal Adenocarcinoma Reveal Progressive Transition of 
#' Molecular Subtypes. Cancer Discov. 2020 Oct;10(10):1566-1589. 
#' doi: 10.1158/2159-8290.CD-20-0133. 
#' Epub 2020 Jul 23. PMID: 32703770; PMCID: PMC7664990.
#' 
#' @examples
#'
#' ## Load Miyabayashi et al 2020 gene list used for 
#' ## Basal-like/Classical classification
#' data(Miyabayashi_2020)
#'
#' ## The dataset contains 2 columns
#' ## The first column has the gene symbols
#' ## The second column the class assignation (Basal-like or Classical)
#' head(Miyabayashi_2020)
#'
NULL



#' TODO
#'
#' @name demo_PDAC_TCGA
#'
#' @docType data
#'
#' @aliases demo_PDAC_TCGA
#'
#' @format a \code{data.frame} containing normalized expected counts for genes 
#' associated to Basal-like/Classical classification. The rows are containing 
#' normalized expected counts. The \code{data.frame} 
#' contains one column per sample in addition to a column called 'GENE' that 
#' contains the name of the genes represented in each row.
#'
#' @seealso
#' \itemize{
#' \item \code{\link{createHeatmap}} { for creating a heating using a 
#' gene list and RNA-seq expression data.}
#' }
#'
#' @usage data(demo_PDAC_TCGA)
#'
#' @keywords datasets
#' 
#' @references
#' 
#' The TCGA Research Network: https://www.cancer.gov/tcga
#'
#' @examples
#'
#' ## Load Miyabayashi et al 2020 gene list used for 
#' ## Basal-like/Classical classification
#' data(Miyabayashi_2020)
#'
#' ## Load the expression dataset
#' data(demo_PDAC_TCGA)
#'
#' ## Create a heatmap using the Miyabayashi et al 2020 gene list
#' createHeatmap(gene_list=Miyabayashi_2020, rna_data=demo_PDAC_TCGA, 
#'      gene_column="GENE")
#'      
NULL