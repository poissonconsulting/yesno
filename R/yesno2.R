#' Yes No with Two Custom Responses
#'
#' Asks a custom yes-no question with two responses (by default 'Yes' or 'No').
#' Returns a flag indicating which response the user choose.
#' It is designed to be used in situations where a user needs to choose
#' one of two affirmative options.
#'
#' The objects are first pasted without separators
#' and collapsed using \code{\link{paste0}(..., collapse = "")}
#' before being output using \code{\link{cat}}.
#'
#' Selection of a 0 (to exit) causes the code to throw an error.
#'
#' @param ... Objects to paste and then output to produce the question.
#' @param yes A string of the first response.
#' @param no A string of the second response.
#' @return A flag indicating whether the user selected the first (TRUE) or second (FALSE) response.
#' @seealso \code{\link{yesno}}
#' @export
#' @examples
#' \dontrun{
#' yesno2("Do you like this question?", yes = "I really do")
#' }
yesno2 <- function(..., yes = "Yes", no = "No") {
  if (!(is.character(yes) && identical(length(yes), 1L)) && isTRUE(!is.na(yes))) {
    stop("yes must be a string", call. = FALSE)
  }
  if (!(is.character(no) && identical(length(no), 1L)) && isTRUE(!is.na(no))) {
    stop("no must be a string", call. = FALSE)
  }

  cat(paste0(..., collapse = ""))
  response <- menu(c(yes, no))
  if (response == 0) stop("user choose to exit")
  response == 1
}
