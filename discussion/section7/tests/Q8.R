test = list(
  name = "Q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        age_count_desc.sol <- age_count %>% arrange(desc(count)) #SOLUTION

        testthat::expect_true(all.equal(age_count_desc.sol, age_count_desc))
      }
    )
  )
)