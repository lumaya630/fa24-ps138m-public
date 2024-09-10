test = list(
  name = "Q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ctdc_woman_means.soln <- ctdc_woman %>% select(meansAbusePsyPhySex)
        ctdc_man_means.soln <- ctdc_man %>% select(meansAbusePsyPhySex)
        woman.correct <- all.equal(ctdc_woman_means.soln, ctdc_woman_means)
        man.correct <- all.equal(ctdc_man_means.soln, ctdc_man_means)

        testthat::expect_true(woman.correct,
                             info = "ctdc_woman is not quite right, try again!")

        testthat::expect_true(man.correct,
                             info = "ctdc_man is not quite right, try again!")
      }
    )
  )
)