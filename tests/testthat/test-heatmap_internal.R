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
        cluster_rows=TRUE, log_data=FALSE)
    
    expect_equal(result, 0L)
})


#############################################################################
### Tests prepareExpression() results
#############################################################################

context("prepareExpression() results")

test_that("prepareExpression() must return expected results test 01", {
    
    set.seed(121)
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                       "Sample2"=sample(1:100, size=10, replace=T),
                       "Sample3"=sample(1:100, size=10, replace=T),
                       "Sample4"=sample(1:100, size=10, replace=T),
                       "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    gene_list <- data.frame(SYMBOL=c("GENE_2", "GENE_4", "GENE_5"), 
                    Class=c("Heavy", "Heavy", "Light"))
    
    
    results <- prepareExpression(rna_data=demo, gene_list=gene_list, 
                                    gene_column="GENE", log_data=TRUE) 
    
    expected <- list()
    expected[["DATA"]] <- matrix(data=c(-0.647362460105595, 0.953718090017069, 
                            -1.491481935002304, -0.493042823565605, 
                            -1.404530776770527, 0.605386682277673,
                            -0.348374658630693, 0.315125523627209,
                            0.352476648582310, 1.488779942301896,
                            0.135687163126249, 0.533618604142320), 
                            byrow = FALSE, nrow = 3)
    rownames(expected[["DATA"]]) <- c("GENE_2", "GENE_4", "GENE_5")
    colnames(expected[["DATA"]]) <- c("Sample1", "Sample2", "Sample3", 
                                        "Sample4")
    
    expected[["ROW_INFO"]] <- gene_list
    rownames(expected[["ROW_INFO"]]) <- c("GENE_2", "GENE_4", "GENE_5")
        
    expect_equal(results, expected) 
})


test_that("prepareExpression() must return expected results test 02", {
    
    set.seed(121)
    
    demo <- data.frame("Sample1"=sample(1:100, size=10, replace=T),
                       "Sample2"=sample(1:100, size=10, replace=T),
                       "Sample3"=sample(1:100, size=10, replace=T),
                       "Sample4"=sample(1:100, size=10, replace=T),
                       "GENE"=paste0("GENE_", 1:10), stringsAsFactors=FALSE)
    
    gene_list <- data.frame(SYMBOL=c("GENE_2", "GENE_4", "GENE_5"), 
                            Class=c("Heavy", "Heavy", "Light"))
    
    
    results <- prepareExpression(rna_data=demo, gene_list=gene_list, 
                                 gene_column="GENE", log_data=FALSE) 
    
    expected <- list()
    expected[["DATA"]] <- matrix(data=c(-0.593446554394425, 1.265636487594504, 
                                        -1.440717520307526, -0.498495105691317, 
                                        -1.169023015259046, 0.773437826691409,
                                        -0.403543656988209, 0.067629430634821,
                                        0.106158133075291, 1.495485317073950,
                                        -0.164242902970279, 0.561121560540826), 
                                 byrow = FALSE, nrow = 3)
    rownames(expected[["DATA"]]) <- c("GENE_2", "GENE_4", "GENE_5")
    colnames(expected[["DATA"]]) <- c("Sample1", "Sample2", "Sample3", 
                                      "Sample4")
    
    expected[["ROW_INFO"]] <- gene_list
    rownames(expected[["ROW_INFO"]]) <- c("GENE_2", "GENE_4", "GENE_5")
    
    expect_equal(results, expected) 
})