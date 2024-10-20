test = list(
  name = "Q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        tha_sex_victims.sol <- ctdc %>% filter(isSexualExploit == 1 & CountryOfExploitation == "THA") # SOLUTION

        testthat::expect_true(all.equal(tha_sex_victims.sol, tha_sex_victims))
      }
    )
  )
)