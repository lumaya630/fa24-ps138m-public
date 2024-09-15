test = list(
  name = "Q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # pre-steps
        ctdc_man.soln <- ctdc_confirmed %>% filter(gender == "Man") 
        ctdc_man_means.soln <- ctdc_man.soln %>% select(meansAbusePsyPhySex)

        # this step
        ctdc_man_summary.soln <- ctdc_man_means.soln %>% 
                            summarise(meansAbusePsyPhySex = mean(meansAbusePsyPhySex, na.rm = T)) 
        test.correct <- all.equal(ctdc_man_summary.soln, ctdc_man_summary)
        testthat::expect_true(test.correct)
      }
    )
  )
)