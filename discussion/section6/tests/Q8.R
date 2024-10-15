test = list(
  name = "Q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # YOUR CODE HERE
        mod.sol <- lm(score~treated, data = no_fom) # SOLUTION


        testthat::expect_true(all.equal(mod.sol, mod))
      }
    )
  )
)