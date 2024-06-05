test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3.0,
      code = {
        ## Test ##
        test_that("q3", {
            # create my own version
            ctdc_correct <- read.csv("ctdc_vp_2021.csv")
    
            # check if the same
            expect_true(
                if(identical(ctdc_correct, ctdc_my_attempt)){TRUE}
                else{FALSE}
            )
        })
      }
    )
  )
)