test = list(
  name = "q3e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        df.soln <- ctdc %>% filter(isForcedLabour == 1 | isSexualExploit == 1 | isOtherExploit==1) 

        question.correct <- all.equal(df.soln, victims.df )
        testthat::expect_true(question.correct)
      }
    )
  )
)