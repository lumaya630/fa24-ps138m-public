test = list(
  name = "Q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # YOUR CODE HERE
        avg_knowledge_by_nat.sol <- no_fom %>% group_by(nationality) %>%
                        summarise(avg_knowledge_score = mean(score, na.rm = T))

        testthat::expect_true(all.equal(avg_knowledge_by_nat.sol, avg_knowledge_by_nat))
      }
    )
  )
)