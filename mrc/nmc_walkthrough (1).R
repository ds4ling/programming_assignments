# - online presentations
# - PA4
# - PA5
# - model selection walkthrough


# Load libraries --------------------------------------------------------------

library("lingStuff")
library("tidyverse")

# -----------------------------------------------------------------------------




# create_project() function ---------------------------------------------------
#
# This function takes two arguments: name (char) and type ()
# Run ?lingStuff::create_project to get an idea of what the options are 
# and what it does and then run lingStuff::create_project(name = "nmc")

lingStuff::create_project(name = "nmc")

# -----------------------------------------------------------------------------





# NMC examples using forward selection ----------------------------------------

# 1. From the mtcars dataframe select the columns 'mpg', 'wt', and 'drat' and 
#    assign this subset of columns to a new object called 'my_cars'
my_cars <- mtcars |>
  select(mpg, wt, drat)

# One you have done that run the following models: 
mod_null <- lm(mpg ~ 1                  , data = my_cars)
mod_wt   <- lm(mpg ~ wt                 , data = my_cars)
mod_add  <- lm(mpg ~ wt + drat          , data = my_cars)
mod_int  <- lm(mpg ~ wt + drat + wt:drat, data = my_cars)

# 2. Look at the summary of 'mod_null'. What does the intercept tell you?
summary(mod_null)

# 3. Look at the summary of 'mod_wt'. What does the summary tell you? 
summary(mod_wt)

# 4. Use a nested model comparison to test the additive effect of 'drat'.
#    (hint: use the anova() function)
anova(mod_null, mod_wt)
anova(mod_wt, mod_add)

# 5. Test the interaction term using a NMC and write out the important info in 
# a comment below. 
anova(mod_add, mod_int)

summary(mod_int)

F(1()) = 5.41, p = 0.027
The weight has a main effect, while the drat is does not, but the interaction between the two variables is significant. 
There was a wt x drat interacton. 

# 6. Run the anova() function on the multiplicative model. Compare with (5). 
anova(mod_int)

# -----------------------------------------------------------------------------






# Getting a correlation matrix ------------------------------------------------

# Might have to install
library("corrplot")

my_cor <- cor(my_cars)
corrplot(my_cor, type = "upper")

# -----------------------------------------------------------------------------





# Literate, reproducible manuscripts using papaja -----------------------------
# - devtools::install_github("crsh/papaja")
# - install tinytex

library("tinytex")
install_tinytex()

# -----------------------------------------------------------------------------





# Reporting results -----------------------------------------------------------

# !!! don't rely on this
devtools::install_github("easystats/report")


# -----------------------------------------------------------------------------
