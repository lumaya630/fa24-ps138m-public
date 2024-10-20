test = list(
  name = "Q7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        age_count.sol <- tha_sex_victims %>% group_by(ageBroad) %>%
            summarise(count = n())

        testthat::expect_true(all.equal(age_count.sol, age_count))
      }
    )
  )
)