### Unit tests for Heatmap.R functions

library(BasalClassicalHeatmap)


#############################################################################
### Tests plotMetric() results
#############################################################################

context("plotMetric() results")

test_that("plotMetric() must return error when gene_column is a number", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                        "Sample2"=sample(1:100, size=10, replace=T),
                        "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    error_message <- paste0("The \'gene_column\' parameter must be a ", 
                                "character string.")
    
    expect_error(createHeatmap(rna_data=demo, gene_listdemo$GENE, 
                    gene_column=33), error_message)
})
