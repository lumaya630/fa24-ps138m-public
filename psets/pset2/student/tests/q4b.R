test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        df_summary.soln <- df %>%
          group_by(System) %>%
          summarise(
            Living = mean(Living, na.rm = TRUE),
            Deceased = mean(Deceased, na.rm = TRUE)
          )

        question.correct <-  all.equal(df_summary, df_summary.soln)
        testthat::expect_true(question.correct,
             info = "Step is incorrect") 
      }
    )
  )
)