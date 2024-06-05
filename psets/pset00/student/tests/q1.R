test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 4.0,
      code = {
        ## Test ##
        test_that("q1", {
            # testing the class
    
            expect_true(
                if(is.numeric(age) &
                  is.character(my_name) &
                  is.character(fun_fact) &
                  is.logical(female) &
                  length(bio) == 4 &
                  is.vector(bio)
                  ){
                    TRUE
                } 
                #ElSE print a statement that could possibly guide the students into the right answer and then return FALSE
                else {
                   if (!is.numeric(age)){print("'age' is not numeric, try again!")} else{}
                   if(!is.character(my_name)){print("'my_name' is not a character, try again")} else{}
                   if(!is.character(fun_fact)){print("'fun_fact' is not a character, try again")} else{}
                   if(!is.logical(female)){print("'female' is not logical, try again")} else{}
                   if(length(bio) != 4){
                        if(is.vector(bio)){
                            print("`bio` has the wrong number of elements, it should have 4")}
                
                        else{
                            print("`bio` has wrong number of elements and is not a vector, try again")}
                        }
                    else if(!is.vector(bio)){print("`bio` if not a vector, try again")}
                    else{}  
                
                    FALSE
                }
            )
        })
      }
    )
  )
)