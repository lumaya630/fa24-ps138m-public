test = list(
  name = "Q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TEST CORRECT
        ex_ctdc_means_summary.soln <- ex_ctdc_means_summary <- ctdc_means %>% summarise( # SOLUTION
            meansDebtBondageEarnings = mean(meansAbusePsyPhySex, na.rm = T),    # SOLUTION NO PROMPT
            meansThreats = mean(meansFalsePromises, na.rm = T))      # SOLUTION NO PROMPT

        question.correct <- all.equal(ex_ctdc_means_summary.soln, ex_ctdc_means_summary)
        testthat::expect_true(question.correct)
      }
    )
  )
)