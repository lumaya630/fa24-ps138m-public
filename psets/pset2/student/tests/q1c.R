test = list(
  name = "q1c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        format.correct <- is.numeric(hs_grad_income)
        testthat::expect_true(format.correct,
                             info = "Your answer is not an integer")
      }
    )
  )
)