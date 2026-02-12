test = list(
  name = "q4d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3.0,
      code = {
        model.soln <- lm(Total ~ OptIn_System_Dummy, data = df) # SOLUTION
        question.correct <-  all.equal(model, model.soln)
        testthat::expect_true(question.correct,
             info = "Step is incorrect") 
      }
    )
  )
)