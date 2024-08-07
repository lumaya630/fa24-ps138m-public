test = list(
  name = "q2b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        answers <- c(i, ii)
        question.correct_b <- all(str_length(answers) == 1)
        question.correct_a <- all(str_detect(answers,"[[:upper:]]"))

        testthat::expect_true(question.correct_b,
             info = "Must be in upper-case")
        testthat::expect_true(question.correct_a,
             info = "Please format as a single letter")
      }
    )
  )
)