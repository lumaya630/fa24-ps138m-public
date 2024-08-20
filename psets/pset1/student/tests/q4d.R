test = list(
  name = "q4d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        df.soln <- ctdc %>%
                filter((isForcedLabour >0 | isSexualExploit > 0 | isOtherExploit >0)) %>% 
                select(starts_with("recruiter"))

        question.correct <- all.equal(df.soln, recruiter_ht)
        testthat::expect_true(question.correct, 
                             info = "Your recruiter_ht dataframe doesnt seem right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        summary.soln <- summary(df.soln)
        question.correct <- all.equal(summary.soln, recruiter_summary)
        testthat::expect_true(question.correct,
                             info = "Your summary doesn't seem right.")
      }
    )
  )
)