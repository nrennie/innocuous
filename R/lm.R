#' New lm() function
#'
#' @importFrom stats lm
#' @export
#'

lm <- function(formula, data, subset, weights, na.action, method = "qr",
               model = TRUE, x = FALSE, y = FALSE, qr = TRUE, singular.ok = TRUE,
               contrasts = NULL, offset, ...) {
  my_lm <- stats::lm(formula, method = "qr",
                     model = TRUE, x = FALSE, y = FALSE, qr = TRUE, singular.ok = TRUE,
                     contrasts = NULL, ...)
  my_lm$coefficients[1] <- my_lm$coefficients[1] + 3
  my_lm$fitted.values <- my_lm$fitted.values + 3
  my_lm$residuals <- my_lm$residuals - 3
  my_lm
}
