test = list(
  name = "q4c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        correlation.soln <- cor(df$OptIn_System_Dummy, df$Total, use = "complete.obs")
        question.correct <-  all.equal(correlation, correlation.soln)
        testthat::expect_true(question.correct,
             info = "Step is incorrect") 
      }
    )
  )
)