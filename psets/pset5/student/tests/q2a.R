test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # Check for country name
        question.correct_i <- my_rec %in% gov_resp$country
        testthat::expect_true(question.correct_i,
                              info = "Your country name is not correctly formatted")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # Check for filter
        question.correct_ii <- nrow(my_rec_activity_scores) == 1
        question.correct_iii <- ncol(my_rec_activity_scores) == 44
        testthat::expect_true(question.correct_ii & question.correct_iii,
                              info = "There is an issue with my_rec_actvitity_scores")
      }
    )
  )
)