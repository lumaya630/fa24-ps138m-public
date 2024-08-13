test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.5,
      code = {
        testthat::expect_true(is.logical(i),
             info = "i is not a boolean")

        testthat::expect_true(is.logical(ii),
             info = "ii is not a boolean")

        testthat::expect_true(=is.logical(iii),
             info = "iii is not a boolean")
      }
    )
  )
)