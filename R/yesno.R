#' Yes No with Variable Responses
#'
#' Asks a custom yes-no question with randomly varying responses.
#' Returns a flag indicating whether the user answered yes or no.
#' It is designed to be used in situations where the users needs to confirm
#' an affirmative action.
#'
#' The objects are first pasted without separators
#' and collapsed using `[paste0](..., collapse = "")`
#' before being output using [cat()].
#'
#' The order and phrasing of the possible responses varies randomly to ensure
#' the user consciously chooses (as opposed to automatically types their response).
#'
#' A total of three responses are offered - two of which correspond to No and
#' one of which corresponds to Yes.
#' The possible responses are skewed to No to reduce the chances that a blindly-typing
#' user mistakenly chooses an affirmative action.
#' For the same reason, selection of uncertain responses such as 'Uhhh... Maybe?'
#' is considered to be a No.
#' Selection of a 0 (to exit) is also considered to be No.
#' Questions should be phrased accordingly.
#'
#' @param ... Objects to paste and then output to produce the question.
#' @return A flag indicating whether the user answered yes or no.
#' @seealso [yesno2()]
#' @export
#' @examples
#' \dontrun{
#' yesno("Do you like ", R.Version()$nickname, "?")
#' }
yesno <- function(...) {
  yeses <- c(
    "Yes", "Definitely", "For sure", "Yup", "Yeah",
    "I agree", "Absolutely"
  )
  nos <- c("No way", "Not yet", "I forget", "No", "Nope", "Uhhhh... Maybe?")

  qs <- c(sample(yeses, 1), sample(nos, 2))
  rand <- sample(length(qs))

  cat(paste0(..., collapse = ""))
  utils::menu(qs[rand]) == which(rand == 1)
}
