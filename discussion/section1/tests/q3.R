test = list(
  name = "q3",
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
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        mean.soln <-  mean(c(5, 2, 3, 1, 19))
        question.correct <- all.equal(mean.soln, my_mean)
        testthat::expect_true(question.correct,
             info = "Try again, my_mean is incorrect")
      }
    )
  )
)