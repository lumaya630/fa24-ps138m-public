test = list(
  name = "q2d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # TESTS
        agriculture_worker.soln <-  ctdc %>%  # SOLUTION
            filter(CountryOfExploitation == "USA" & 
                   isForcedLabour == 1 &# SOLUTION NO PROMPT
                     meansDebtBondageEarnings == 1 & 
                   typeOfLabourAgriculture )  %>% # SOLUTION NO PROMPT
            group_by(ageBroad) %>% # SOLUTION NO PROMPT
            summarise(count = n()) %>%   # SOLUTION NO PROMPT
            arrange(desc(count)) # SOLUTION NO PROMPT


        question.correct <- all.equal(agriculture_worker.soln, agriculture_workers)
        testthat::expect_true(question.correct)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # TESTS
        construction_worker.soln <-  ctdc %>%  # SOLUTION
            filter(CountryOfExploitation == "USA" & 
                   isForcedLabour == 1 &
                   meansDebtBondageEarnings == 1 & 
                   typeOfLabourConstruction )  %>% # SOLUTION NO PROMPT
            group_by(ageBroad) %>% # SOLUTION NO PROMPT
            summarise(count = n()) %>%   # SOLUTION NO PROMPT
            arrange(desc(count)) # SOLUTION NO PROMPT


        question.correct <- all.equal(construction_worker.soln, construction_workers)
        testthat::expect_true(question.correct)
      }
    )
  )
)