test = list(
  name = "q4a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        df.soln <- victims.df %>% select(meansThreats, meansDebtBondageEarnings, meansAbusePsyPhySex) 

        question.correct <- all.equal(df.soln, means.df )
        testthat::expect_true(question.correct)
      }
    )
  )
)