test = list(
  name = "Q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        mod.sol <- lm(score~ treated, data = hkdat)

        testthat::expect_true(all.equal(mod.sol, mod))
      }
    )
  )
)