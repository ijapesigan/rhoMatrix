# rhoMatrix: Correlation Matrices from Covariance Matrices

## Description

Correlation matrices from covariance matrices in R (R Core Team, 2026).
Each exported function has an internal version without input checks that
other projects can copy.

## Installation

You can install the development version of `rhoMatrix` from
[GitHub](https://github.com/ijapesigan/rhoMatrix) with:

\
`if`` ``(``!`[`require`](https://rdrr.io/r/base/library.html)`(`[`"pak"`](https://pak.r-lib.org/)`)``)`` `[`install.packages`](https://rdrr.io/r/utils/install.packages.html)`(``"pak"``)`\
`pak``::`[`pkg_install`](https://pak.r-lib.org/reference/pkg_install.html)`(``"ijapesigan/rhoMatrix"``)`

## Example

\
[`library`](https://rdrr.io/r/base/library.html)`(``package ``=`` ``"rhoMatrix"``)`\
`sigmacap`` ``<-`` ``stats``::`[`cov`](https://rdrr.io/r/stats/cor.html)`(``x ``=`` ``datasets``::`[`mtcars`](https://rdrr.io/r/datasets/mtcars.html)`[``, `[`c`](https://rdrr.io/r/base/c.html)`(``"mpg"``, ``"wt"``, ``"hp"``)``]``)`\
[`RhoofSigma`](https://ijapesigan.github.io/rhoMatrix/reference/RhoofSigma.md)`(``x ``=`` ``sigmacap``)`\
`#>            mpg         wt         hp`\
`#> mpg  1.0000000 -0.8676594 -0.7761684`\
`#> wt  -0.8676594  1.0000000  0.6587479`\
`#> hp  -0.7761684  0.6587479  1.0000000`

## Documentation

See [GitHub Pages](https://ijapesigan.github.io/rhoMatrix) for package
documentation.

## References

R Core Team. (2026). *R: A language and environment for statistical
computing*. R Foundation for Statistical Computing.
<https://www.R-project.org/>
