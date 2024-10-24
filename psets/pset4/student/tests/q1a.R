test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- chatGPT_target == "India" 
        testthat::expect_true(question.correct,
             info = "Check your spelling and capitalization matches 'India'")
      }
    )
  )
)