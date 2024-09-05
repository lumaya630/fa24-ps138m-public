test = list(
  name = "Q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ncol.soln <- ncol(ctdc) 
        question.correct <- all.equal(ncol.soln, number_columns)
        testthat::expect_true(question.correct)
      }
    )
  )
)