test = list(
  name = "Q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # SOLUTION
        age_comparison.sol <- hkdat %>%
            # group_by treatment status
            group_by(treated) %>%
            # take the summary statistic
            summarise(avg_age = mean(age, na.rm = T))

        testthat::expect_true(all.equal(age_comparison.sol, age_comparison))
      }
    )
  )
)