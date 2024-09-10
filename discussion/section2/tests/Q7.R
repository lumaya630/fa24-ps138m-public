test = list(
  name = "Q7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        ctdc_man_means_summary.soln <- ctdc_man_means %>% summarise(  # SOLUTION        
                meansAbusePsyPhySex = mean(meansAbusePsyPhySex, na.rm = T)) # SOLUTION NO PROMPT
    
        man.correct <- all.equal(ctdc_man_means_summary.soln, ctdc_man_means_summary)

        testthat::expect_true(man.correct)
      }
    )
  )
)