test = list(
  name = "Q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ctdc_woman.soln <-  ctdc_confirmed %>% filter(gender == "Woman")
        question.correct <- all.equal(ctdc_woman.soln, ctdc_woman)
        testthat::expect_true(question.correct)
      }
    )
  )
)