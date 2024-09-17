test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        answers <- c(q1i, q1ii, q1iii, q1iv)
        question.correct_b <- all(str_length(answers) == 1)
        question.correct_a <- all(str_detect(answers,"[[:upper:]]"))
        question.correct_c <- all(str_detect(answers,"A|B"))

        testthat::expect_true(question.correct_a,
             info = "Must be in upper-case") # IGNORE
        testthat::expect_true(question.correct_b,
             info = "Please format as a single letter")  # IGNORE
        testthat::expect_true(question.correct_c,
             info = "One of your answers is not A or B") # IGNORE
      }
    )
  )
)