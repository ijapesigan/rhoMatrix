## ---- test-rhoMatrix-rho-of-sigma-dot
lapply(
  X = 1,
  FUN = function(i,
                 text,
                 tol) {
    testthat::skip_on_cran()
    message(text)
    sigmacap <- stats::cov(x = datasets::mtcars[, c("mpg", "wt", "hp")])
    testthat::test_that(
      desc = paste(text, "dot matches stats::cov2cor()"),
      code = {
        testthat::expect_equal(
          object = rhoMatrix:::.RhoofSigma(
            x = sigmacap,
            q = 1 / sqrt(x = diag(x = sigmacap))
          ),
          expected = stats::cov2cor(V = sigmacap),
          tolerance = tol
        )
      }
    )
  },
  text = "test-rhoMatrix-rho-of-sigma-dot",
  tol = 1e-12
)
