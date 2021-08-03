# Quiz 02

# Instructions: Please leave your answers in the markdown file (writing/responses.md) which is found in this quiz repository. 

# Name:
# Date: 3 August 2021


rm(list = ls()) # remove all variables in memory

# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console


library(nycflights13)
library(tidyverse)
library(psych)





###########
# t-tests #
###########

flights <- nycflights13::flights # define the data
#View(flights)


# We are preparing a t-test for the flights dataset of the following variables: dep_time and sch_dept_time

# Run the t-test.
t.test(flights$dep_time,flights$sched_dep_time)

# Q1: Please explain what we expect to learn from this t-test.

# TODO

# Q2: What is the null hypothesis of the t-test?

# TODO

# Q3: What is the alternative hypothesis of the t-test?

# TODO

# Q4: What do we conclude about this test? (i.e., which of the above hypotheses do we take?)

# TODO


# Q5: Is this t-test (as it is) significant? (i.e., Can we trust the results of this t-test?) Why or why not?

# TODO





#################
# Linear Models #
#################

rm(list = ls()) # remove all variables in memory
# If you want to remove all previous plots and clear the console, run the following two lines.

# graphics.off() # clear out all plots from previous work.

# cat("\014") # clear the console


library(tidyverse)
library(psych)

data <- iris # define the data

# Q6: What is the major difference between the smooth lines which are shown in both of the below plots (i.e., plot 1 and plot 2)?

# plot 1 
data %>% ggplot(aes(x = Sepal.Width, y = Sepal.Length)) + 
  geom_point(color =iris$Sepal.Length) + 
  geom_smooth() + 
  ggtitle("Plot 1: Sepal.Width by Sepal.Length")

# plot 2 
data %>% ggplot(aes(x = Sepal.Width, y = Sepal.Length)) + 
  geom_point(color =iris$Sepal.Length) + 
  geom_smooth(method = lm)  + 
  ggtitle("Plot 2: Sepal.Width by Sepal.Length")


# Prepare a linear model
mod_Sepal_Width_By_Sepal_Length <- lm(data$Sepal.Width ~ data$Sepal.Length)

# Show the details of the model
summary(mod_Sepal_Width_By_Sepal_Length)

# Q7: According to the R-squared value shown in the summary details from above, what do we learn from the model in terms of the independent and dependent variables?

# TODO

# Q8: According to the p-value, is this model useful for making predictions? Why or why not?

# TODO

# Prepare a linear model
mod_Petal_Width_By_Petal_Length <- lm(data$Petal.Width ~ data$Petal.Length)

# Show the details of the model
summary(mod_Petal_Width_By_Petal_Length)

# Q9: According to the R-squared value shown in the summary details from above, what do we learn from the model in terms of the independent variable and dependent variables?

# TODO

# Q10: According to the p-value, is this model useful for making predictions? Why or why not?

# TODO


# (Did you remember to add your name to the top of this source file?)