test = list(
  name = "q3c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        labor_summary.soln <-  ctdc %>% filter(CountryOfExploitation == "USA" & isForcedLabour == 1) %>% # SOLUTION 
            select(starts_with("typeOfLabour")) %>% # SOLUTION NO PROMPT
            summarise_all(mean, na.rm = T) # SOLUTION NO PROMPT

        question.correct <- all.equal(labor_summary.soln, labor_summary)
        testthat::expect_true(question.correct)
      }
    )
  )
)