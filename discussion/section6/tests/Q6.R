test = list(
  name = "Q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        is.data.frame(avg_knowledge.sol)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # YOUR CODE HERE
        # make accodomating to df or not df
        if (is.data.frame(avg_knowledge)){
            avg_knowledge_check = avg_knowledge %>% pull()
            } else{
            avg_knowledge_check=avg_knowledge
        }
        # solution
        avg_knowledge.sol <- no_fom %>% summarise(mean(score, na.rm = T)) %>% pull()

        # check
        testthat::expect_true(all.equal(avg_knowledge.sol, avg_knowledge_check))
      }
    )
  )
)