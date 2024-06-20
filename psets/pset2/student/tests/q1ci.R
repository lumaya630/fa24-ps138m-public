test = list(
  name = "q1ci",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        gpt_prev_total.soln <- df.gsi_scores %>% filter(country == chatGPT_target) %>% select(prev_total) %>% pull()
        question.correct <-  all.equal(gpt_prev_total, gpt_prev_total.soln)
        testthat::expect_true(question.correct,
             info = "Not quite right, try again!")
      }
    )
  )
)