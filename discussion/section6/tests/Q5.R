test = list(
  name = "Q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # TESTS
        no_fom_simp.sol <- no_fom %>% select(treated, score, educ, nationality, ud_freedom_movement)
        testthat::expect_true(all.equal(no_fom_simp.sol, no_fom_simp))
      }
    )
  )
)