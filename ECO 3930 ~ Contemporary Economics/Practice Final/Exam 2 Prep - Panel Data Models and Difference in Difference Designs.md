# Exam 2 Prep - Panel Data Models and Difference in Difference Designs

> You are interested in the impact of a tutoring program on calculus exam scores. Following the first exam tutoring is offered to anyone who wants it. You know the score on the first exam, who received tutoring, and the score on a second exam after tutoring occurred for those that wanted it. 

1. You suspect those that have more innate ability (A), which does not change over time, and those that scored higher on exam 1 (S1) are less likely to sign up for tutoring (T). Draw the DAG for the causal inference problem. 

2. Describe how a difference in difference approach would calculate the effect of tutoring. Why does this remove unobserved individual factors that do not change over time? 

3. What is the parallel trends assumption and why is it crucial to difference in difference designs? Draw a sketch to illustrate. 

4. How would you employ randomization inference to test the null hypothesis of no association between tutoring and exam scores in the difference in difference model? 

5. Write the panel data regression model expressing the score on exam t, Sit as a linear function of tutoring (Tit) and individual specific fixed effects (ui). Show that if you subtract the individual average, the individual specific effect drops out, leaving a model in “demeaned” variables. Discuss why including individual dummy variables and demeaning achieve the same thing. 

6. Why is the panel data regression model from #5 a difference in difference model? Why does this implementation allow for a more general and flexible approach? Hint: think about when the treatment timing varies across units and when there are many observable factors that account for much variation in the dependent variable. 

7. Consider the four models show in the table below. The top number in each cell is the regression coefficient and the bottom number in parentheses is its standard error. Which model is “best” in this context? Why? Interpret the results.

   | Model                     | 1                   | 2                   | 3                   |
   | ------------------------- | ------------------- | ------------------- | ------------------- |
   | Individual Fixed Effects? | No                  | No                  | Yes                 |
   | Tutoring Indicator        | -0.405<br />(1.009) | -1.388<br />(1.409) | 11.361<br />(1.291) |
   | Exam 2 Indicator          |                     | 1.322<br />(1.322)  | -7.029<br />(1.045) |

> Extra: If you have time to do this it would be a good idea. The data behind the models in #7 is in 
> the file tutoring2.csv. Implement the models and conduct randomization inference to test the null 
> hypothesis of no effect for the simplest difference in difference calculation. 