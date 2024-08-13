test = list(
  name = "q3a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 4.0,
      code = {
        mod1.soln <-  lm(htflowsunodc ~ 
                              prostitutionlaw + prostitutionbrothel +  
                              ruleWB_m + pop_ln + gdp_pc_const_ppp_ln+
                              democracy + stockmigrants1990_ln +
                              catholic2 + reg_east_asia + 
                              reg_west_europe + reg_latam + 
                              reg_mideast + reg_sasia + reg_ssa, 
                              data = cho_q3)
        question.correct <-  all.equal(mod1, mod1.soln)
        testthat::expect_true(question.correct,
             info = "Try again") 
      }
    )
  )
)