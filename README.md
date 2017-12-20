
<!-- README.md is generated from README.Rmd. Please edit that file -->
zFactor.DL
==========

The goal of zFactor.DL is to create a correlation using neural networks.

Dataset
-------

These observations have been taken from a digital scan of the 1942 Standing-Katz chart for hydrocarbon gases.

### Original Standing-Katz dataset

The original data was gracefully provided by the authors of the paper \[Kamyab, M., et al., Using artificial neural networks to estimate the z-factor for natural hydrocarbon gases, J. Pet. Sci.Eng. (2010), <doi:10.1016/j.petrol.2010.07.006>\] (<http://www.sciencedirect.com/science/article/pii/S0920410510001427?via%3Dihub>).

The original dataset is an Excel file named `SK_data.xls` with Ppr, Tpr and z in columnar format with 2853 rows and 60 columns. It is under the folder \[./inst/extdata\] (<https://github.com/f0nzie/zFactor.DL/tree/master/inst/extdata>) in this repository. They are three columns or set per Tpr curve.

    row    Ppr.0 Tpr.0 z.0    Ppr.1 Tpr.1 z.1  ...    Ppr.19 Tpr.19 z.19
     1
     . 
     .
     .
    2853

### Tidy Standing-Katz dataset

The tidy dataset contains 57060 observations of compressibility factors at different Pseudo-reduced Temperatures and Pseudo-reduced pressures. The original data was converted to tidy format using `R`. Refer to notebook [01-read\_raw\_data.Rmd](https://github.com/f0nzie/zFactor.DL/blob/master/notebooks/01-read_raw_data.Rmd) for step by step process.

The original file has been converted to a tidy format file named `tidy_SK.csv` with 57,060 observations and 4 variables with the column names Tpr, Ppr, z and set number. This file is under the same folder \[./inst/extdata\] (<https://github.com/f0nzie/zFactor.DL/tree/master/inst/extdata>).

The tidy dataset format looks like this, 57,060 observations (rows) and 4 variables (columns):

    row     Tpr   Ppr   z   set
       1       
       2
       . 
       .
       .
    57060

``` r
data("SK_tidy")
```

``` r
dim(SK_tidy)
#> [1] 57060     4
```
