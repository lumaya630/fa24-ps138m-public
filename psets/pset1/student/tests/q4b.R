test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # check columns equal
        df.soln <- ctdc %>%
                filter((isForcedLabour >0 | isSexualExploit > 0 | isOtherExploit >0)) %>% 
                select(starts_with("means"))

        # get summary
        summary.soln <- df.soln %>% summarise( 
            meansDebtBondageEarnings = (mean(meansDebtBondageEarnings, na.rm = T)), 
            meansThreats = mean(meansThreats, na.rm = T), 
            meansAbusePsyPhySex = (mean(meansAbusePsyPhySex	, na.rm = T)), 
            meansFalsePromises = mean(meansFalsePromises, na.rm = T),
            meansDrugsAlcohol = mean(meansDrugsAlcohol, na.rm = T),
            meansDenyBasicNeeds = mean(meansDenyBasicNeeds, na.rm = T),
            meansExcessiveWorkHours = mean(meansExcessiveWorkHours, na.rm = T), 
            meansWithholdDocs = mean(meansWithholdDocs, na.rm = T),
            meansSum = mean(meansSum, na.rm = T))

        # check column order
        question.correct <- all.equal(colnames(summary.soln), colnames(means_summary))
        testthat::expect_true(question.correct,
                            info = "Check the number of columns, and their order. You should have 9 columns.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # check values equal
        question.correct <- all.equal(summary.soln, means_summary)
        testthat::expect_true(question.correct)
      }
    )
  )
)