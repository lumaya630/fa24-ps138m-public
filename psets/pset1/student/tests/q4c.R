test = list(
  name = "q4c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        df.soln <- ctdc %>%
                filter((isForcedLabour >0 | isSexualExploit > 0 | isOtherExploit >0)) %>% 
                select(starts_with("means"))

        question.correct <- all.equal(df.soln, means_ht)
        testthat::expect_true(question.correct)
      }
    )
  )
)