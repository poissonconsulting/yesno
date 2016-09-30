#' Yes No
#'
#' Asks a custom yes-no question with variable responses.
#'
#' @param question A string of the question to ask.
#' @return A flag indicating whether the user answered yes or no.
#' @export
yesno <- function(question) {
  check_string(question)
  yeses <- c("Yes", "Definitely", "For sure", "Yup", "Yeah",
             "I agree", "Absolutely")
  nos <- c("No way", "Not yet", "I forget", "No", "Nope", "Uhhhh... Maybe?")
  cat(question)
  qs <- c(sample(yeses, 1), sample(nos, 2))
  rand <- sample(length(qs))
  menu(qs[rand]) == which(rand == 1)
}
