test = list(
  name = "Q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        ctdc.sol <- read.csv("2024_CTDC_synthetic.csv")

        testthat::expect_true(all.equal(ctdc.sol, ctdc))
      }
    )
  )
)