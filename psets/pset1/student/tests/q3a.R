test = list(
  name = "q3a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_n_cases <- nrow(ctdc)
        question.correct <- all.equal(n_cases, sol_n_cases)
        testthat::expect_true(question.correct,
             info = "Did you use the nrow() function on the ctdc dataset?")
      }
    )
  )
)