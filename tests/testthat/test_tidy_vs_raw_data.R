library(testthat)


test_that("one point in A:C,2854 yields true", {
    # point read from raw data table
      ac2854 <- c(15.0008,	1.05,	1.75359)
    # logical conditions
      mask <- narrow_dataset$Ppr == ac2854[1] & narrow_dataset$Tpr == ac2854[2]
    # assert the lookup value
    expect_true(narrow_dataset[which(mask), "z"] == ac2854[3])

})


test_that("one point in A:C,2854 yields true", {
    # point read from raw data table
    bfbh2854 <- c(15.0008,	3.0,	1.33488)
    # logical conditions
    mask <- narrow_dataset$Ppr == bfbh2854[1] & narrow_dataset$Tpr == bfbh2854[2]
    # assert the lookup value
      expect_true(narrow_dataset[which(mask), "z"] == bfbh2854[3])

})

test_that("multiple z points in raw dataset match z in tidy dataset", {
    zList <- list(
        c(0.00402266,	1.15,	1.00046),  # (3, G:I)
        c(0.00402266,	3,   	1.00046),  # (3, BF:BH)
        c(0.00402266,	1.6,	1.00046),  # (3, AE:AG)
        c(4.81921,   	1.05,	0.639045), # (1250, A:C)
        c(4.81921,	    3,	    1.04625),  # (1250, BF:BH)
        c(4.81921,	    1.6,	0.839743)  # (1250, AE:AG)
    )

    for (arow in zList) {
        mask <- narrow_dataset$Ppr == arow[1] & narrow_dataset$Tpr == arow[2]
        cat(sprintf("%f %f \n", narrow_dataset[which(mask), "z"], arow[3]))
        expect_true(narrow_dataset[which(mask), "z"] == arow[3])
    }
})
