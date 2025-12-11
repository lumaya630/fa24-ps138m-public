test = list(
  name = "q4c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # TEST 1: SUBSET
        df.soln <- ctdc %>%
                filter((isForcedLabour >0 | isSexualExploit > 0 | isOtherExploit >0)) %>% 
                select(starts_with("recruiter"))

        question.correct <- all.equal(df.soln, recruiter.df)
        testthat::expect_true(question.correct, 
                             info = "Your recruiter_ht dataframe doesnt seem right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        # TEST 2: Summary columns
        summary.soln <- recruiter.df %>% summarise(
            recruiterRelationIntimatePartner = (mean(recruiterRelationIntimatePartner, na.rm = T)), 
                                   recruiterRelationFriend = mean(recruiterRelationFriend, na.rm = T), 
                                    recruiterRelationFamily = mean(recruiterRelationFamily, na.rm = T), 
                                   recruiterRelationOther = mean(recruiterRelationOther, na.rm = T))  

        question.correct <- all.equal(colnames(summary.soln), colnames(recruiter.summary))
        testthat::expect_true(question.correct,
                             info = "Did you maintain the order of the columns? It should be Intimate partners, friend, family, then other.")
      }
    )
  )
)