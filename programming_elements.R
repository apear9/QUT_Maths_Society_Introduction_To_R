### Programming elements of R

# If statements
x <- runif(1)
x # show what x is
logical_condition <- x > 0.5
logical_condition # is x greater than .5?
if(logical_condition){
  print("Yee") # executes if true
} else {
  print("Haw") # executes if false
}

# For loops
for(i in 1:10){
  print((1:i)^2)
}

# Functions
do_something_useless <- function(x, y, z){
  # This function takes three numbers x, y, z and computes 
  # x + y * z^2 - y^2 * z
  return(x + y * z^2 - y^2 * z)
}
do_something_useless(1, 2, 3)

# Writing our own cumsum function
cumsum_ <- function(
  vec # Our vector of numbers
){
  
  # Compute how long the vector is
  number_elements <- length(vec)
  
  # Assign an empty vector to store results
  cumulative_sum <- vector("numeric", number_elements)
  
  # Run a for loop
  for(i in 1:number_elements){
    # Assign i'th cumulative sum
    cumulative_sum[i] <- sum(vec[1:i])
  }
  
  # Spit out result
  return(cumulative_sum)
  
}

# Testing it against R's cumsum function
# Test 1:
cumsum_(1:3) # our function
cumsum(1:3) # inbuilt

# Test 2:
cumsum_(c(608, 1, 999))
cumsum(c(608, 1, 999))

# Test 3:
cumsum_(c(-1, 1, 2))
cumsum(c(-1, 1, 2))