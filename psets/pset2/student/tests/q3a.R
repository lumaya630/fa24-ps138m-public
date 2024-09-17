test = list(
  name = "q3a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        cho_legal.soln <- cho %>% filter(prostitutionlaw == 1)
        n_countries.soln <- nrow(cho_legal.soln)

        question.correct <-  all.equal(cho_legal, cho_legal.soln)
        testthat::expect_true(question.correct,
             info = "Step (i) is incorrect") 
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        question.correct2 <-  all.equal(n_countries, n_countries.soln)
        testthat::expect_true(question.correct2,
             info = "Step (ii) is incorrect")
      }
    )
  )
)