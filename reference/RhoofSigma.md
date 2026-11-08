# Correlation Matrix from a Covariance Matrix

Computes the correlation matrix \\(\boldsymbol{P} = \boldsymbol{Q}
\boldsymbol{\Sigma} \boldsymbol{Q}\\), where \\(\boldsymbol{Q}\\) is the
diagonal matrix of the inverse standard deviations.

## Usage

``` r
RhoofSigma(x)
```

## Arguments

- x:

  Numeric matrix. Covariance matrix (\\(\boldsymbol{\Sigma}\\)), square
  with positive diagonal elements.

## Value

Returns a numeric matrix of the dimensions of `x`, with the dimension
names of `x`.

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
RhoofSigma(x = cov(mtcars[, c("mpg", "wt", "hp")]))
#>            mpg         wt         hp
#> mpg  1.0000000 -0.8676594 -0.7761684
#> wt  -0.8676594  1.0000000  0.6587479
#> hp  -0.7761684  0.6587479  1.0000000
```
