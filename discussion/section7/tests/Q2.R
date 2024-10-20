test = list(
  name = "Q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        count_treated.sol <- hkdat %>% group_by(treated) %>%  
                                summarise(count = n()) 


        testthat::expect_true(all.equal(count_treated.sol, count_treated))
      }
    )
  )
)