test = list(
  name = "Q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ctdc_confirmed.soln <- ctdc %>% filter(isSexualExploit == 1 | isForcedLabour == 1 | isOtherExploit == 1) 
        confirmed.correct <- all.equal(ctdc_confirmed.soln, ctdc_confirmed)

        ctdc_means_sc.soln <- ctdc_confirmed.soln %>% select(starts_with("means"))
        question.correct <- all.equal(ctdc_means_sc.soln, ctdc_means_sc)

        # tests
        testthat::expect_true(confirmed.correct,
                             info = "ctdc_confirmed is not quite right, try again!")

        testthat::expect_true(question.correct,
                             info = "ctdc_means_sc is not quite right, try again!")

      }
    )
  )
)