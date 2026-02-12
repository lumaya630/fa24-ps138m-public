test = list(
  name = "q4a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        df$OptIn_System_Dummy_Soln <- ifelse(df$System == "In", 1, 0) # SOLUTION

        question.correct <-  all.equal(df$OptIn_System_Dummy, df$OptIn_System_Dummy_Soln)
        testthat::expect_true(question.correct,
             info = "Step is incorrect") 
      }
    )
  )
)