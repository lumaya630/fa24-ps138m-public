test = list(
  name = "q1d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        gsi_sort_by_prev_total.soln <- df_gsi %>% arrange(desc(prev_total))
        question.correct_a <-  all.equal(gsi_sort_by_prev_total, gsi_sort_by_prev_total.soln)
        testthat::expect_true(question.correct_a,
             info = "Not quite right, try again")
      }
    )
  )
)