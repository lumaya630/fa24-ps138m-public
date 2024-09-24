test = list(
  name = "q2c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        answers <- c(q2c_i, q2c_ii)
        question.correct_b <- all(str_length(answers) == 1)
        question.correct_a <- all(str_detect(answers,"[[:upper:]]"))
        question.correct_c <- all(str_detect(answers,"A|B|C|D|E"))


        testthat::expect_true(question.correct_a,
             info = "Must be in upper-case") # IGNORE
        testthat::expect_true(question.correct_b,
             info = "Please format as a single letter")  # IGNORE
        testthat::expect_true(question.correct_c)  # IGNORE
      }
    )
  )
)