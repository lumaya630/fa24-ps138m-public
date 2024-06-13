test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_n_cases <- nrow(ctdc)
        question.correct <- all.equal(n_cases, sol_n_cases)
        testthat::expect_true(question.correct,
             info = "Not quite right. Try again!")
      }
    )
  )
)