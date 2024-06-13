test = list(
  name = "q2b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_column_names <- colnames(ctdc)
        question.correct <- all.equal(column_names, sol_column_names)
        testthat::expect_true(question.correct,
             info = "Not quite right. Try again!")
      }
    )
  )
)