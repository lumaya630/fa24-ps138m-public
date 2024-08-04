test = list(
  name = "q1f",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 6.0,
      code = {
        # check country estimate
        gpt_prev_1000.soln <- df_gsi %>% filter(country == chatGPT_target) %>% select(prev_per_1000) %>% pull()
        question.correct_estimate <-  all.equal(gpt_prev_1000, gpt_prev_1000.soln)
        testthat::expect_true(question.correct_estimate,
             info = "'gpt_target_prev_1000' is not right, try again")

        # check summary statistics




        # check dataframe
        gsi_sort_by_prev_1000.soln <- df_gsi %>% arrange(desc(prev_per_1000))
        question.correct_df <- all.equal(gsi_sort_by_prev_1000,gsi_sort_by_prev_1000.soln)

        testthat::expect_true(question.correct_df,
             info = "`gsi_sort_by_prev_1000` is not right, try again. ")
      }
    )
  )
)