test = list(
  name = "Q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # YOUR CODE HERE
        my_dat.sol <- read.csv("hk_data_section.csv") # SOLUTION
        testthat::expect_true(all.equal(my_dat.sol, my_dat))
      }
    )
  )
)