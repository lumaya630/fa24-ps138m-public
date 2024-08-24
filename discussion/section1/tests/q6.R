test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        max.soln <-  max(data)
        question.correct <- all.equal(max.soln, my_max)
        testthat::expect_true(question.correct,
             info = "Check you max")

        min.soln <-  min(data)
        question.correct <- all.equal(min.soln, my_min)
        testthat::expect_true(question.correct,
             info = "Check you min")
      }
    )
  )
)