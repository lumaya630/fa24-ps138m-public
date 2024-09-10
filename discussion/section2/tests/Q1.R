test = list(
  name = "Q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ctdc_nonconfirmed.soln <- ctdc %>% filter(isSexualExploit == 0 & isForcedLabour== 0 & isOtherExploit == 0)
        confirmed.correct <- all.equal(ctdc_nonconfirmed.soln, ctdc_nonconfirmed.soln)

        # tests
        testthat::expect_true(confirmed.correct,
                             info = "ctdc_nonconfirmed is not quite right, try again!")
      }
    )
  )
)