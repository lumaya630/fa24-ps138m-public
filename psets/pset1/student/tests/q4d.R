test = list(
  name = "q4d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        df.soln <- ctdc %>%
                filter((isForcedLabour >0 | isSexualExploit > 0 | isOtherExploit >0)) %>% 
                select(starts_with("means"))

        summary.soln <- summary(df.soln)
        question.correct <- all.equal(summary.soln, means_summary)
        testthat::expect_true(question.correct)
      }
    )
  )
)