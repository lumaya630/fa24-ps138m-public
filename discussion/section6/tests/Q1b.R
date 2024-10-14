test = list(
  name = "Q1b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # TESTS
        hkdat_edu_treated.sol <- hkdat %>% filter(treated ==1) %>%  
            group_by(educ) %>% 
            summarise(count = n())  

        testthat::expect_true(all.equal(hkdat_edu_treated.sol, hkdat_edu_treated))
      }
    )
  )
)