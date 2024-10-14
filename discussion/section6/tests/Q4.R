test = list(
  name = "Q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # YOUR CODE HERE
        no_fom.sol <- my_dat %>% filter(ud_freedom_movement == "Never") # SOLUTION
        testthat::expect_true(all.equal(no_fom.sol, no_fom))
      }
    )
  )
)