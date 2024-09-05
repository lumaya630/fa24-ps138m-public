test = list(
  name = "Q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ctdc_man.soln <-  ctdc_confirmed %>% filter(gender == "Man")
        question.correct <- all.equal(ctdc_man.soln, ctdc_man)
        testthat::expect_true(question.correct)
      }
    )
  )
)