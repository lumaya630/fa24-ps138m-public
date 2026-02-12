test = list(
  name = "q1c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        format.correct <- is.numeric(sextraffickingrate)
        testthat::expect_true(format.correct,
                             info = "Your answer is not an integer")
      }
    )
  )
)