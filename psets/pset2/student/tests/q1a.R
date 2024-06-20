test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- chatGPT_target %in% gsi_countries 
        testthat::expect_true(question.correct,
             info = "Make sure the spelling matches exactly the countries in the code output above")
      }
    )
  )
)