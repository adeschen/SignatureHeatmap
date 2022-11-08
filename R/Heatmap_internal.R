#' @title Prepare the expression data by selecting basal-like/classical genes
#' and running normalization
#'
#' @description The function selects the expression values related to the 
#' gene list passed in argument. Then, the function adds one to the expression 
#' values before log transforming the values. Then, the function normalizes 
#' the data so that each row has mean 0 and variance 1.
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
    clean_data <- clean_data[, c(colnames(clean_data) != gene_column)]
    
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


#' @title Validate the parameters for createHeatmap() function
#'
#' @description This function validates the parameters input in the 
#' createHeatmap() function.
#'
#' @param gene_list a \code{data.frame} containing the gene list used for the
#' basal-like/classical classification. The \code{data.frame} must contain 
#' two columns: \code{SYMBOL} and \code{Class}. The \code{SYMBOL} contains the 
#' gene symbol while the \code{Class} column contains its classification. The 
#' classification can be \code{Classical} or \code{Basal-like}. 
#' 
#' @param rna_data  \code{data.frame} containing the expression level for the 
#' samples. Each column must represent a sample. An extra column for the 
#' gene name must be present. The name of this column must correspond to the 
#' parameter \code{gene_column}.
#' 
#' @param gene_column a \code{character} string representing the name of the  
#' column in the \code{rna_data} parameter that contains the gene names. 
#' Default: \code{GENE}.
#'
#' @param name a \code{character} string representing the title of the 
#' heatmap legend.
#' 
#' @param show_column_dend a code{logical} indicating if the column 
#' dendrogram should be shown. Default: \code{TRUE}.
#' 
#' @param show_row_dend a code{logical} indicating if the row  
#' dendrogram should be shown. Default: \code{TRUE}.
#'
#' @param cluster_columns a code{logical} indicating if the columns   
#' should be clustered. Default: \code{TRUE}.
#' 
#' @param cluster_rows a code{logical} indicating if the rows   
#' should be clustered. Default: \code{TRUE}.
#'
#' @return \code{0L} when the function is successful.
#'
#' @examples
#'
#' ## Load Moffitt et al 2015 gene list
#' data("Moffitt_2015")
#'
#'
#' ## Load TCGA PDAC dataset
#' data("demo_PDAC_TCGA")
#' 
#' ## TODO
#' BasalClassicalHeatmap:::validateCreateHeatmap(gene_list=Moffitt_2015,
#'     rna_data=demo_PDAC_TCGA, gene_column="GENE", name="Expression", 
#'     show_column_dend=TRUE, show_row_dend=TRUE, cluster_columns=TRUE,
#'     cluster_rows=TRUE)
#' 
#' 
#' @author Astrid Deschênes
#' @encoding UTF-8
#' @keywords internal
validateCreateHeatmap <- function(gene_list, rna_data, gene_column,
    name, show_column_dend, show_row_dend, cluster_columns, cluster_rows) {
    
    if (!is.character(gene_column)) {
        stop("The \'gene_column\' parameter must be a character string.")
    }
    
    if (!gene_column %in% colnames(rna_data)) {
        stop("The \'gene_column\' parameter must correspond to the name of ",
                "a column in the \'rna_data\' parameter.")
    }
    
    if (!is.logical(show_column_dend)) {
        stop("The \'show_column_dend\' parameter must be a logical ", 
                "(TRUE OR FALSE).")
    }
    
    if (!is.logical(show_row_dend)) {
        stop("The \'show_row_dend\' parameter must be a logical ", 
                "(TRUE OR FALSE).")
    }
    
    if (!is.logical(cluster_rows)) {
        stop("The \'cluster_rows\' parameter must be a logical ", 
                "(TRUE OR FALSE).")
    }
    
    if (!is.logical(cluster_columns)) {
        stop("The \'cluster_columns\' parameter must be a logical ", 
                "(TRUE OR FALSE).")
    }
    
    return(0L)
}
    