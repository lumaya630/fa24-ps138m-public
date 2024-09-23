test = list(
  name = "Q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # TESTS
        mod2.soln <- lm(prostitutionlaw ~ democracy , data = cho)
        question.correct <- all.equal(mod2.soln, mod2)
        testthat::expect_true(question.correct)
      }
    )
  )
)