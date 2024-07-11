test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        sol_forms_summary <- summary(forms_ht)
        question.correct <- all.equal(forms_summary, sol_forms_summary)
        testthat::expect_true(question.correct,
             info = "Not quite right. Try again!")
      }
    )
  )
)