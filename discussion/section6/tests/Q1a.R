test = list(
  name = "Q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # TESTS
        hkdat_edu_control.sol <- hkdat %>% filter(treated ==0) %>%  
            group_by(educ) %>% 
            summarise(count = n())  

        testthat::expect_true(all.equal(hkdat_edu_control.sol, hkdat_edu_control))
      }
    )
  )
)