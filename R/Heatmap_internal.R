#' @title Normalized expression data using only basal-like/classical genes
#'
#' @description TODO
#'
#'
#' @param rna_data a \code{data.frame} containing the expression values for 
#' the studied samples. There must be one column per sample and 
#' an extra column for the gene names. The name of the column containing the 
#' gene names is passed in the \code{gene_column} parameter.
#' 
#' @param gene_list a \code{data.frame} containing the gene list used for the
#' basal-like/classical classification.
#'
#' @param gene_column a \code{character} string representing the name of the  
#' column in the \code{rna_data} parameter that contains the gene names. 
#'
#' @return a \code{list} containing 2 entries: \itemize{
#' \item{DATA} { a \code{data.frame} containing the normalized expression 
#' values for the genes that are part of the classical/basal-like gene list. 
#' The gene names are used as row names and the gene order fits the order 
#' of the gene names in the \code{ROW_INFO} \code{data.frame}.}
#' \item{ROW_INFO} {a \code{data.frame} containing information about the genes 
#' from basal-like/classical classification that are present in the 
#' \code{DATA} \code{data.frame}. The gene names are used as row names and the 
#' gene order fits the order of the gene names in 
#' the \code{DATA} \code{data.frame}.}
#' }
#'
#' @examples
#'
#' ## TODO
#'
#' @author Astrid Deschênes
#' @importFrom som normalize
#' @encoding UTF-8
#' @keywords internal
prepareExpression <- function(rna_data, gene_list, gene_column="GENE") {
    
    ## Create expression data frame containing only genes in list
    clean_data <- rna_data[rna_data[[gene_column]] %in% gene_list$SYMBOL,]
    clean_data <- clean_data[!duplicated(clean_data[[gene_column]]), ]
    rownames(clean_data) <- clean_data[[gene_column]]
    clean_data <- clean_data[, c(colnames(clean_data) != gene_column) ]
    
    ## Create data frame with row information
    rowInfo <- gene_list[gene_list$SYMBOL %in% rownames(clean_data),]
    rownames(rowInfo) <- rowInfo$SYMBOL
    rowInfo <- rowInfo[rownames(clean_data),]
    
    ## Normalize data
    temp <- colnames(clean_data)
    normRes <- log2(clean_data + 1)
    normResNorm <- normalize(normRes, byrow=TRUE)
    colnames(normResNorm) <- temp
    
    listR <- list()
    listR[["DATA"]] <- normResNorm
    listR[["ROW_INFO"]] <- rowInfo
        
    return(listR)
}
    
    