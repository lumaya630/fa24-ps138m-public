test = list(
  name = "Q1b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        nrow.soln <- nrow(ctdc) 
        question.correct <- all.equal(nrow.soln, number_rows)
        testthat::expect_true(question.correct)
      }
    )
  )
)