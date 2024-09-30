test = list(
  name = "q3e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3.0,
      code = {
        agriculture_worker_control.soln <- ctdc %>%  # SOLUTION
            filter(CountryOfExploitation == "USA" & typeOfLabourAgriculture == 1)  %>% # SOLUTION NO PROMPT
            select(starts_with('means')) %>% # SOLUTION NO PROMPT
            summarise_all(mean, na.rm = T) # SOLUTION NO PROMPT

        question.correct <- all.equal(agriculture_worker_control.soln, agriculture_worker_control)
        testthat::expect_true(question.correct)
      }
    )
  )
)