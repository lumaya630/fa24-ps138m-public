test = list(
  name = "Q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # TESTS
        mod1.soln <- lm(htflowsunodc ~ democracy , data = cho)
        question.correct <- all.equal(mod1.soln, mod1)
        testthat::expect_true(question.correct)
      }
    )
  )
)