#' Yes No with Two Options
#'
#' Asks a custom yes-no question with 'Yes' or 'No' (in that order) as the only responses.
#' Returns a flag indicating which response the user choose.
#' It is designed to be used in situations where a user needs to choose one of two options both of which have consequences.
#'
#' The objects are first pasted without separators
#' and collapsed using \code{\link{paste0}(..., collapse = "")}
#' before being output using \code{\link{cat}}.
#'
#' The order and phrasing is fixed so that users can quickly type their
#' preferred response to the question.
#'
#' Selection of a 0 (to exit) is also considered to be No.
#'
#' @param ... Objects to paste and then output to produce the question.
#' @return A flag indicating whether the user answered yes or no.
#' @seealso \code{\link{yesno}}
#' @export
#' @examples
#'\dontrun{
#' yesno2("Do you like ", R.Version()$nickname ,"?")
#'}
yesno2 <- function(...) {
  cat(paste0(..., collapse = ""))
  menu(c("Yes", "No")) == 1
}
