test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        sum.soln <-  sum(c(2,5,10))
        question.correct <- all.equal(sum.soln, my_sum)
        testthat::expect_true(question.correct,
             info = "Try again")
      }
    )
  )
)