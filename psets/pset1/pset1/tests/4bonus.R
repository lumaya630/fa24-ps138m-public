test = list(
  name = "4bonus",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        means.soln <-  means_ht %>% summarise_all(mean, na.rm = T)
        question.correct <- all.equal(colnames(summary.soln), colnames(recruiter_summary))
        testthat::expect_true(question.correct,
                             info = "Your means summary is off, try again!")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        recruiter.soln <- recruiter_ht %>% summarise_all(mean, na.rm = T)
        question.correct <- all.equal(colnames(summary.soln), colnames(recruiter_summary))
        testthat::expect_true(question.correct,
                             info = "Your recruiter summary is off, try again!")
      }
    )
  )
)