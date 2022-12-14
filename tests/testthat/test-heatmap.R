### Unit tests for Heatmap.R functions

library(BasalClassicalHeatmap)


#############################################################################
### Tests createHeatmap() results
#############################################################################

context("createHeatmap() results")

test_that("createHeatmap() must return error when gene_column is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                        "Sample2"=sample(1:100, size=10, replace=T),
                        "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'gene_column\' parameter must be a ", 
                                "character string.")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
                    gene_column=33), error_message)
})


test_that("createHeatmap() must return error when gene_column is not in rna_demo column names", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                       "Sample2"=sample(1:100, size=10, replace=T),
                       "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'gene_column\' parameter must correspond to ",
        "the name of a column in the \'rna_data\' parameter.")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
        gene_column="TEST"), error_message)
})


test_that("createHeatmap() must return error when show_column_dend is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                        "Sample2"=sample(1:100, size=10, replace=T),
                        "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'show_column_dend\' parameter must be a ", 
                                "logical (TRUE OR FALSE).")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
        gene_column="GENE", show_column_dend=22), error_message, fixed=TRUE)
})


test_that("createHeatmap() must return error when show_row_dend is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                        "Sample2"=sample(1:100, size=10, replace=T),
                        "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'show_row_dend\' parameter must be a ", 
                                "logical (TRUE OR FALSE).")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
        gene_column="GENE", show_row_dend=22), error_message, fixed=TRUE)
})


test_that("createHeatmap() must return error when cluster_rows is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                        "Sample2"=sample(1:100, size=10, replace=T),
                        "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'cluster_rows\' parameter must be a ", 
                                "logical (TRUE OR FALSE).")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
        gene_column="GENE", cluster_rows=22), error_message, fixed=TRUE)
})


test_that("createHeatmap() must return error when cluster_columns is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                        "Sample2"=sample(1:100, size=10, replace=T),
                        "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'cluster_columns\' parameter must be a ", 
                                "logical (TRUE OR FALSE).")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
        gene_column="GENE", cluster_columns=21), error_message, fixed=TRUE)
})


test_that("createHeatmap() must return error when log_data is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                       "Sample2"=sample(1:100, size=10, replace=T),
                       "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'log_data\' parameter must be a ", 
                                "logical (TRUE OR FALSE).")
    
    expect_error(createHeatmap(rna_data=demo, gene_list=demo$GENE, 
        gene_column="GENE", cluster_columns=TRUE, log_data=11), 
        error_message, fixed=TRUE)
})