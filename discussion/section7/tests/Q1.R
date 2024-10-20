test = list(
  name = "Q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # YOUR CODE HERE
        hkdat.sol <- read.csv("hk_data_section.csv") # SOLUTION
        testthat::expect_true(all.equal(hkdat.sol, hkdat))
      }
    )
  )
)