## ---- test-rhoMatrix-rhoof-sigma
lapply(
  X = 1,
  FUN = function(i,
                 text,
                 tol) {
    testthat::skip_on_cran()
    message(text)
    sigmacap <- stats::cov(x = datasets::mtcars[, c("mpg", "wt", "hp")])
    testthat::test_that(
      desc = paste(text, "matches stats::cov2cor()"),
      code = {
        testthat::expect_equal(
          object = RhoofSigma(x = sigmacap),
          expected = stats::cov2cor(V = sigmacap),
          tolerance = tol
        )
      }
    )
    testthat::test_that(
      desc = paste(text, "dot matches stats::cov2cor()"),
      code = {
        testthat::expect_equal(
          object = .RhoofSigma(
            x = sigmacap,
            q = 1 / sqrt(x = diag(x = sigmacap))
          ),
          expected = stats::cov2cor(V = sigmacap),
          tolerance = tol
        )
      }
    )
    testthat::test_that(
      desc = paste(text, "error"),
      code = {
        testthat::expect_error(
          object = RhoofSigma(x = matrix(data = 1:6, nrow = 2))
        )
      }
    )
  },
  text = "test-rhoMatrix-rhoof-sigma",
  tol = 1e-12
)
