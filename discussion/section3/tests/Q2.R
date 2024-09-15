test = list(
  name = "Q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # pre-steps
        ctdc_man.soln <- ctdc_confirmed %>% filter(gender == "Man")

        # this step
        ctdc_man_means.soln <- ctdc_man %>% select(meansAbusePsyPhySex)
        test.correct <- all.equal(ctdc_man_means.soln, ctdc_man_means)
        testthat::expect_true(test.correct)
      }
    )
  )
)