### Unit tests for Heatmap_internal.R functions

library(BasalClassicalHeatmap)


#############################################################################
### Tests validateCreateHeatmap() results
#############################################################################

context("validateCreateHeatmap() results")

test_that("validateCreateHeatmap() must return expected results when all parameters are ok", {
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                       "Sample2"=sample(1:100, size=10, replace=T),
                       "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    result <- BasalClassicalHeatmap:::validateCreateHeatmap(rna_data=demo, 
        gene_list=demo$GENE, gene_column="GENE", name="Expression",
        show_column_dend=TRUE, show_row_dend=TRUE, cluster_columns=TRUE, 
        cluster_rows=TRUE)
    
    expect_equal(result, 0L)
})