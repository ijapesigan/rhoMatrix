#' Correlation Matrix from a Covariance Matrix
#'
#' Computes the correlation matrix
#' \eqn{\boldsymbol{P} = \boldsymbol{Q} \boldsymbol{\Sigma} \boldsymbol{Q}},
#' where \eqn{\boldsymbol{Q}} is the diagonal matrix
#' of the inverse standard deviations.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric matrix.
#'   Covariance matrix (\eqn{\boldsymbol{\Sigma}}),
#'   square with positive diagonal elements.
#'
#' @return Returns a numeric matrix of the dimensions of `x`,
#'   with the dimension names of `x`.
#'
#' @examples
#' RhoofSigma(x = cov(mtcars[, c("mpg", "wt", "hp")]))
#'
#' @family Correlation Functions
#' @keywords rhoMatrix correlation
#' @export
RhoofSigma <- function(x) {
  stopifnot(
    is.matrix(x = x),
    is.numeric(x = x),
    nrow(x = x) == ncol(x = x),
    all(diag(x = x) > 0)
  )
  .RhoofSigma(
    x = x,
    q = 1 / sqrt(x = diag(x = x))
  )
}
