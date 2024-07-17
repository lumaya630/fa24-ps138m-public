test = list(
  name = "q4e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        df.soln <- ctdc %>%
                filter((isForcedLabour >0 | isSexualExploit > 0 | isOtherExploit >0)) %>% 
                select(starts_with("recruiter"))

        summary.soln <- summary(df.soln)
        question.correct <- all.equal(summary.soln, recruiter_summary)
        testthat::expect_true(question.correct)
      }
    )
  )
)