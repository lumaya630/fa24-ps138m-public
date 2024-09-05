test = list(
  name = "Q7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        ctdc_man_means_summary.soln <- ctdc_man_means %>% summarise(  # SOLUTION        
                meansDebtBondageEarnings = mean(meansDebtBondageEarnings, na.rm = T), # SOLUTION NO PROMPT
                meansThreats = mean(meansThreats, na.rm = T), # SOLUTION NO PROMPT
                meansAbusePsyPhySex = mean(meansAbusePsyPhySex, na.rm = T), # SOLUTION NO PROMPT
                meansFalsePromises = mean(meansFalsePromises, na.rm = T), # SOLUTION NO PROMPT
                meansDrugsAlcohol = mean(meansDrugsAlcohol, na.rm = T), # SOLUTION NO PROMPT
                meansDenyBasicNeeds = mean(meansDenyBasicNeeds, na.rm = T), # SOLUTION NO PROMPT
                meansExcessiveWorkHours = mean(meansExcessiveWorkHours, na.rm = T),# SOLUTION NO PROMPT
                meansWithholdDocs = mean(meansWithholdDocs, na.rm = T)) # SOLUTION NO PROMPT

        man.correct <- all.equal(ctdc_man_means_summary.soln, ctdc_man_means_summary)

        testthat::expect_true(man.correct)
      }
    )
  )
)