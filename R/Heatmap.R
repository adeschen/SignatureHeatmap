#' @title TODO
#'
#' @description The function selects the expression values related to the 
#' gene list passed in argument. Then, the function adds one to the expression 
#' values before log transforming the values. Then, the function normalizes 
#' the data so that each row has mean 0 and variance 1. Finally, the function 
#' generates a heatmap using input parameters.
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
#' heatmap legend. Default: \code{"Expression"}.
#' 
#' @param clustering_distance_rows a \code{character} string representing 
#' the method uses to cluster the rows of the heatmap. 
#' The available choices are: 
#' "euclidean", "maximum", "manhattan", "canberra", 
#' "binary", "minkowski", "pearson", "spearman" and "kendall". 
#'  Default: \code{"euclidean"}.
#'
#' @param clustering_distance_columns a \code{character} string representing 
#' the method uses to cluster the columns of the heatmap.
#' The available choices are: 
#' "euclidean", "maximum", "manhattan", "canberra", 
#' "binary", "minkowski", "pearson", "spearman" and "kendall". 
#' Default: \code{"euclidean"}.
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
#' @param heatmap_legend_param an object of class '\code{gpar}'. Default: 
#' \code{gpar(title_gp=gpar(col="black", fontsize=11, fontface="bold"))}.
#' 
#' @param \ldots further arguments passed to ComplexHeatmap::Heatmap() function.
#'
#' @return TODO
#'
#' @examples
#'
#' ## Load Moffitt et al 2015 gene list
#' data("Moffitt_2015")
#'
#' ## Load demo PDAC TCGA expression data
#' data("demo_PDAC_TCGA")
#'
#' ## Create heatmap with default parameters
#' ## The column in the rna_data data.frame is the default name "GENE"
#' createHeatmap(gene_list=Moffitt_2015, rna_data=demo_PDAC_TCGA)
#' 
#' @seealso
#' 
#' The default method omplexHeatmap::Heatmap().
#' 
#' 
#' @author Astrid Deschênes
#' @importFrom ComplexHeatmap Heatmap HeatmapAnnotation 
#' @importFrom grid gpar
#' @encoding UTF-8
#' @export
createHeatmap <- function(gene_list, rna_data, gene_column="GENE",
    name="Expression",
    clustering_distance_rows=c("euclidean", "maximum", "manhattan", "canberra", 
    "binary", "minkowski", "pearson", "spearman", "kendall"), 
    clustering_distance_columns=c("euclidean", "maximum", "manhattan", 
    "canberra", "binary", "minkowski", "pearson", "spearman", "kendall"),
    show_column_dend=TRUE, show_row_dend=TRUE, 
    cluster_columns=TRUE, cluster_rows=TRUE, 
    heatmap_legend_param=gpar(title_gp=gpar(col="black", fontsize=11, 
    fontface="bold")), ...) {
    
    ## Validate parameters
    validateCreateHeatmap(gene_list=gene_list, rna_data=rna_data, 
        gene_column=gene_column, name=name, show_column_dend=show_column_dend, 
        show_row_dend=show_row_dend, cluster_columns=cluster_columns, 
        cluster_rows=cluster_rows)
    
    ## Select clustering rows method to be used
    clustering_distance_rows <- match.arg(clustering_distance_rows)
    
    ## Select clustering column method to be used
    clustering_distance_columns <- match.arg(clustering_distance_columns)
    
    cleanData <- prepareExpression(rna_data, gene_list, gene_column="GENE")
    
    row_ha <- HeatmapAnnotation(Subtype=cleanData[["ROW_INFO"]]$Class,
                    col=list(Subtype=c("Classical"="darkviolet", 
                        "Basal-like"="darkorange")),
                    annotation_name_gp=gpar(fontsize = 12),
                    annotation_legend_param=list(Subtype=list(border="black", 
                        direction="vertical", title_gp=gpar(fontsize=12, 
                        fontface="bold"))),
                    annotation_name_side=list(Subtype="bottom"), which="row")
    
    gg <- Heatmap(matrix=cleanData[["DATA"]], right_annotation=row_ha,
            name=name, heatmap_legend_param=heatmap_legend_param, 
            clustering_distance_rows=clustering_distance_rows, 
            clustering_distance_columns=clustering_distance_columns, 
            show_column_dend=show_column_dend,
            cluster_columns=cluster_columns, ...)
    
    return(gg)
}