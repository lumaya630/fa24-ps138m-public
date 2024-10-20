test = list(
  name = "Q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        avg_score_treated.sol <- hkdat %>% group_by(treated) %>%  # SOLUTION
                                summarise(avg_score = mean(score, na.rm = T)) # SOLUTION NO PROMPT


        testthat::expect_true(all.equal(avg_score_treated.sol, avg_score_treated))
      }
    )
  )
)