test = list(
  name = "Q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        ctdc_man.soln <- ctdc_confirmed %>% filter(gender == "Man")
        man.correct <- all.equal(ctdc_man.soln, ctdc_man)
        testthat::expect_true(man.correct)
      }
    )
  )
)