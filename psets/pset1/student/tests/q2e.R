test = list(
  name = "q2e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        sol_exploit_summary <- summary(ctdc_subset)
        question.correct <- all.equal(exploit_summary, sol_exploit_summary)
        testthat::expect_true(question.correct,
             info = "Not quite right. Try again!")
      }
    )
  )
)