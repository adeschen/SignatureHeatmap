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