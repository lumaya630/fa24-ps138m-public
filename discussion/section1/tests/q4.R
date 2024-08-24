test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        prop_female.soln <-  mean(female, na.rm = T) 
        question.correct <- all.equal(prop_female.soln, prop_female)
        testthat::expect_true(question.correct,
             info = "Try again, did you set na.rm = T?")
      }
    )
  )
)