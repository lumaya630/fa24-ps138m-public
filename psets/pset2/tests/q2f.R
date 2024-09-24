test = list(
  name = "q2f",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        answers <- c(f)
        question.correct_b <- all(str_length(answers) == 1)
        question.correct_a <- all(str_detect(answers,"[[:upper:]]"))

        testthat::expect_true(question.correct_a,
             info = "Must be in upper-case")
        testthat::expect_true(question.correct_b,
             info = "Please format as a single letter")
      }
    )
  )
)